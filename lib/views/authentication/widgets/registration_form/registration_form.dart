import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/widgets/password_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/description_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/name_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/password_confirmation_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/submit_register_button.dart';
import 'package:worldon/views/authentication/widgets/registration_form/user_image_picker.dart';
import 'package:worldon/views/authentication/widgets/registration_form/username_text_field.dart';
import 'package:worldon/views/authentication/widgets/world_on_title.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_management/widgets/tag_addition_creation_card.dart';

import '../email_text_field.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    Key? key,
    required this.userOption,
  }) : super(key: key);

  final Option<User> userOption;
  static const double _sizedBoxHeight = 10;

  @override
  Widget build(BuildContext context) {
    final _formState = context.read<RegistrationFormBloc>().state;
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: _formState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              const WorldOnTitle(),
              const SizedBox(height: _sizedBoxHeight),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(height: _sizedBoxHeight),
              UserImagePicker(
                imageURLOption: _formState.user.imageURL.isEmpty ? none() : some(_formState.user.imageURL),
              ),
              const SizedBox(height: _sizedBoxHeight),
              UsernameTextField(
                initialValue: userOption.fold(
                  () => null,
                  (_user) => _user.username.isValid() ? _user.username.getOrCrash() : null,
                ),
              ),
              const SizedBox(height: _sizedBoxHeight),
              NameTextField(
                initialValue: userOption.fold(
                  () => null,
                  (_user) => _user.name.isValid() ? _user.name.getOrCrash() : null,
                ),
              ),
              const SizedBox(height: _sizedBoxHeight),
              EmailTextField(
                validator: (_) => _emailValidator(context),
                initialValue: userOption.fold(
                  () => null,
                  (_user) => _user.email.isValid() ? _user.email.getOrCrash() : null,
                ),
                eventToAdd: (String value) => context.read<RegistrationFormBloc>().add(
                      RegistrationFormEvent.emailAddressChanged(value),
                    ),
              ),
              const SizedBox(height: _sizedBoxHeight),
              // const BirthdayButton(),
              PasswordTextField(
                eventToAdd: (String value) => context.read<RegistrationFormBloc>().add(
                      RegistrationFormEvent.passwordChanged(value),
                    ),
                validator: (_) => _passwordValidator(context),
              ),
              const SizedBox(height: _sizedBoxHeight),
              const PasswordConfirmationTextField(),
              const SizedBox(height: _sizedBoxHeight),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              Text(
                S.of(context).optional,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: WorldOnColors.accent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: _sizedBoxHeight),
              const DescriptionTextField(),
              const SizedBox(height: _sizedBoxHeight),
              // TODO: Show again when terms and conditions have been created
              // EULACheckBox(),
              // const SizedBox(height: 8),
              AutoSizeText(
                S.of(context).registrationTagCard,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              TagAdditionCreationCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.read<RegistrationFormBloc>().add(
                      RegistrationFormEvent.interestsChanged(tags),
                    ),
                tagsEitherOption: none(),
                showErrorMessage: false,
              ),
              const SizedBox(height: _sizedBoxHeight),
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
