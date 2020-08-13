import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/views/authentication/widgets/registration_form/password_confirmation_text_field.dart';
import 'package:worldon/views/authentication/widgets/registration_form/user_image_picker.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card.dart';
import 'package:worldon/views/profile/widget/profile_editing_form/username_text_form_field.dart';

import 'birthday_picker.dart';
import 'description_text_form_field.dart';
import 'email_text_field.dart';
import 'name_text_form_field.dart';
import 'password_text_field.dart';

class ProfileEditingForm extends StatelessWidget {
  const ProfileEditingForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.bloc<ProfileEditingFormBloc>().state.user.isValid
        ? SingleChildScrollView(
            child: Form(
              autovalidate: context.bloc<ProfileEditingFormBloc>().state.showErrorMessages,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: UserImagePicker(),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                // TODO: Refactor the text fields so they can be used in the register page too
                                // Passing the event adding function as a parameter, like with the tag addition
                                NameTextFormField(),
                                SizedBox(height: 10),
                                UsernameTextFormField(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const DescriptionTextFormField(),
                    const SizedBox(height: 8),
                    const EmailTextField(),
                    const SizedBox(height: 8),
                    const BirthdayPicker(),
                    const SizedBox(height: 8),
                    // Maybe the password should be changed in Option or in some more special way
                    const PasswordTextField(),
                    const PasswordConfirmationTextField(),
                    const SizedBox(height: 8),
                    // TODO: Add interests list
                    const SubmitButton(),
                  ],
                ),
              ),
            ),
          )
        // TODO: Control for errors
        // in case the User gotten is not valid but at the same time is not the empty user of the initial state
        : WorldOnProgressIndicator();
  }
}
