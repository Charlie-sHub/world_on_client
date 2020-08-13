import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/register_button.dart';
import 'package:worldon/views/authentication/widgets/registration_form/password_confirmation_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/user_image_picker.dart';
import 'package:worldon/views/core/widget/misc/tag_addition_card/tag_addition_card.dart';

import '../password_text_field.dart';
import '../username_text_field.dart';
import '../world_on_title.dart';
import 'birthday_button.dart';
import 'description_text_field.dart';
import 'email_text_field.dart';
import 'eula_check_box.dart';
import 'name_text_field.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Check how to initialize this form with a google user or similar
    return SingleChildScrollView(
      child: Form(
        autovalidate: context.bloc<RegistrationFormBloc>().state.showErrorMessages,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
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
              ),
              const SizedBox(height: 8),
              const PasswordConfirmationTextField(),
              const SizedBox(height: 8),
              TagAdditionCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.bloc<RegistrationFormBloc>().add(
                      RegistrationFormEvent.interestsChanged(
                        tags.asSet(),
                      ),
                    ),
              ),
              const SizedBox(height: 8),
              EULACheckBox(),
              const SizedBox(height: 8),
              const RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
