import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/authentication/widgets/password_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/birthday_button.dart';
import 'package:worldon/views/authentication/widgets/registration_form/description_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/email_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/eula_check_box.dart';
import 'package:worldon/views/authentication/widgets/registration_form/name_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/password_confirmation_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/submit_register_button.dart';
import 'package:worldon/views/authentication/widgets/registration_form/user_image_picker.dart';
import 'package:worldon/views/authentication/widgets/username_text_field.dart';
import 'package:worldon/views/authentication/widgets/world_on_title.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/widget/misc/tag_addition_card/tag_addition_card.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Check how to initialize this form with a google user or similar
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: context.bloc<RegistrationFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const WorldOnTitle(),
              const SizedBox(height: 10),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              UserImagePicker(),
              const SizedBox(height: 10),
              UsernameTextField(
                eventToAdd: (String value) => context.bloc<RegistrationFormBloc>().add(
                      RegistrationFormEvent.usernameChanged(value),
                    ),
                validator: (_) => _usernameValidator(context),
              ),
              const SizedBox(height: 8),
              const NameTextField(),
              const SizedBox(height: 8),
              const EmailTextField(),
              const SizedBox(height: 8),
              const DescriptionTextField(),
              const SizedBox(height: 8),
              const BirthdayButton(),
              const SizedBox(height: 8),
              PasswordTextField(
                eventToAdd: (String value) => context.bloc<RegistrationFormBloc>().add(
                      RegistrationFormEvent.passwordChanged(value),
                    ),
                validator: (_) => _passwordValidator(context),
              ),
              const SizedBox(height: 8),
              const PasswordConfirmationTextField(),
              const SizedBox(height: 8),
              TagAdditionCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.bloc<RegistrationFormBloc>().add(
                      RegistrationFormEvent.interestsChanged(
                        tags.asSet().map((_tag) => _tag.id).toSet(),
                      ),
                    ),
              ),
              const SizedBox(height: 8),
              EULACheckBox(),
              const SizedBox(height: 8),
              const SubmitRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }

  String _passwordValidator(BuildContext context) {
    return context.bloc<RegistrationFormBloc>().state.user.password.value.fold(
          (failure) => failure.maybeMap(
            emptyString: (_) => "The password can't be empty",
            multiLineString: (_) => "The password can't be more than one line",
            stringExceedsLength: (_) => "The password is too long",
            // Rather superfluous
            invalidPassword: (_) => "The password is invalid",
            orElse: () => StringConst.unknownError,
          ),
          (_) => null,
        );
  }

  String _usernameValidator(BuildContext context) {
    return context.bloc<RegistrationFormBloc>().state.user.username.value.fold(
          (failure) => failure.maybeMap(
            emptyString: (_) => "The username can't be empty",
            multiLineString: (_) => "The username can't be more than one line",
            stringExceedsLength: (_) => "The username is too long",
            stringWithInvalidCharacters: (_) => "The username has invalid characters",
            orElse: () => StringConst.unknownError,
          ),
          (_) => null,
        );
  }
}
