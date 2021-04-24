import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/experience_management/widgets/tag_addition_creation_card.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/birthday_picker.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/description_text_form_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/editing_submit_button.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/email_text_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/name_text_form_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/password_confirmation_text_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/password_text_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/user_image_picker.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/username_text_form_field.dart';

class ProfileEditingForm extends StatelessWidget {
  final User user;

  const ProfileEditingForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: context.read<ProfileEditingFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: UserImagePicker(user: user),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // TODO: Refactor the text fields so they can be used in the register page too
                          // Passing the event adding function as a parameter, like with the tag addition
                          NameTextFormField(
                            initialValue: user.name.getOrCrash(),
                          ),
                          const SizedBox(height: 10),
                          UsernameTextFormField(
                            initialValue: user.username.getOrCrash(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              DescriptionTextFormField(
                initialValue: user.description.getOrCrash(),
              ),
              const SizedBox(height: 8),
              EmailTextField(
                initialValue: user.email.getOrCrash(),
              ),
              const SizedBox(height: 8),
              const BirthdayPicker(),
              const SizedBox(height: 8),
              // Maybe the password should be changed in Option or in some more special way
              PasswordTextField(
                initialValue: user.password.getOrCrash(),
              ),
              PasswordConfirmationTextField(
                initialValue: user.password.getOrCrash(),
              ),
              const SizedBox(height: 8),
              // TODO: rework it so it loads with the tags already liked
              TagAdditionCreationCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.read<ProfileEditingFormBloc>().add(
                      ProfileEditingFormEvent.interestsChanged(tags),
                    ),
                tagsEitherOption: some(
                  right(user.interestsIds),
                ),
                showErrorMessage: false,
              ),
              const EditingSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
