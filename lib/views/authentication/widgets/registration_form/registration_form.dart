import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/widgets/password_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/description_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/name_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/password_confirmation_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/submit_register_button.dart';
import 'package:worldon/views/authentication/widgets/registration_form/user_image_picker.dart';
import 'package:worldon/views/authentication/widgets/registration_form/username_text_field.dart';
import 'package:worldon/views/authentication/widgets/world_on_title.dart';
import 'package:worldon/views/experience_management/widgets/tag_addition_creation_card.dart';

import '../email_text_field.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Check how to initialize this form with a google user or similar
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: context.read<RegistrationFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
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
              const UsernameTextField(),
              const SizedBox(height: 8),
              const NameTextField(),
              const SizedBox(height: 8),
              EmailTextField(
                validator: (_) => _emailValidator(context),
                eventToAdd: (String value) => context.read<RegistrationFormBloc>().add(
                      RegistrationFormEvent.emailAddressChanged(value),
                    ),
              ),
              const SizedBox(height: 8),
              // const BirthdayButton(),
              PasswordTextField(
                eventToAdd: (String value) => context.read<RegistrationFormBloc>().add(
                      RegistrationFormEvent.passwordChanged(value),
                    ),
                validator: (_) => _passwordValidator(context),
              ),
              const SizedBox(height: 8),
              const PasswordConfirmationTextField(),
              const SizedBox(height: 8),
              const Divider(color: Colors.grey),
              const SizedBox(height: 8),
              const DescriptionTextField(),
              const SizedBox(height: 8),
              // TODO: Show again when terms and conditions have been created
              // EULACheckBox(),
              // const SizedBox(height: 8),
              AutoSizeText(
                S.of(context).registrationTagCard,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              TagAdditionCreationCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.read<RegistrationFormBloc>().add(
                      RegistrationFormEvent.interestsChanged(tags),
                    ),
                tagSetOption: none(),
              ),
              const SizedBox(height: 8),
              const SubmitRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }

  String _passwordValidator(BuildContext context) {
    return context.read<RegistrationFormBloc>().state.user.password.value.fold(
          (failure) => failure.maybeMap(
            emptyString: (_) => S.of(context).passwordEmptyString,
            multiLineString: (_) => S.of(context).passwordMultiLineString,
            stringExceedsLength: (_) => S.of(context).passwordStringExceedsLength,
            // Rather superfluous
            invalidPassword: (_) => S.of(context).invalidPassword,
            orElse: () => S.of(context).unknownError,
          ),
          (_) => "",
        );
  }

  String _emailValidator(BuildContext context) {
    return context.read<RegistrationFormBloc>().state.user.email.value.fold(
          (failure) => failure.maybeMap(
            invalidEmail: (_) => S.of(context).invalidEmail,
            orElse: () => S.of(context).unknownError,
          ),
          (_) => "",
        );
  }
}
