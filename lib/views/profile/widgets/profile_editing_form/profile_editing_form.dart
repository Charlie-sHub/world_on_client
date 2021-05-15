import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/authentication/forgotten_password_form/forgotten_password_form_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_management/widgets/tag_addition_creation_card.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/description_text_form_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/editing_submit_button.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/email_text_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/name_text_form_field.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/user_image_picker.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/username_text_form_field.dart';

import '../../../../injection.dart';

class ProfileEditingForm extends StatelessWidget {
  final User user;

  const ProfileEditingForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
              autovalidateMode: context.read<ProfileEditingFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  const SizedBox(height: 10),
                  DescriptionTextFormField(
                    initialValue: user.description.getOrCrash(),
                  ),
                  const SizedBox(height: 10),
                  EmailTextField(
                    initialValue: user.email.getOrCrash(),
                  ),
                  const SizedBox(height: 10),
                  TagAdditionCreationCard(
                    tagChangeFunction: (KtSet<Tag> tags) => context.read<ProfileEditingFormBloc>().add(
                          ProfileEditingFormEvent.interestsChanged(tags),
                        ),
                    tagsEitherOption: some(
                      right(user.interestsIds),
                    ),
                    showErrorMessage: false,
                  ),
                  const SizedBox(height: 10),
                  const EditingSubmitButton(),
                ],
              ),
            ),
            const Divider(
              color: WorldOnColors.accent,
            ),
            const SizedBox(height: 10),
            Text(
              S.of(context).resetPasswordMessage,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            BlocProvider(
              create: (context) => getIt<ForgottenPasswordFormBloc>()
                ..add(
                  ForgottenPasswordFormEvent.emailChanged(
                    user.email.getOrCrash(),
                  ),
                ),
              child: BlocConsumer<ForgottenPasswordFormBloc, ForgottenPasswordFormState>(
                listener: (context, state) => state.failureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) => _onFailure(failure, context),
                    (_) => _onSuccess(context),
                  ),
                ),
                builder: (context, state) => ElevatedButton(
                  onPressed: () => context.read<ForgottenPasswordFormBloc>().add(
                        const ForgottenPasswordFormEvent.sentRequest(),
                      ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      WorldOnColors.primary,
                    ),
                  ),
                  child: Text(
                    S.of(context).resetPassword,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          orElse: () => S.of(context).unknownError,
        ),
        coreApplication: (failure) => failure.coreApplicationFailure.maybeMap(
          emptyFields: (_) => S.of(context).emptyFields,
          orElse: () => S.of(context).unknownError,
        ),
        orElse: () => S.of(context).unknownError,
      ),
    ).show(context);
  }

  void _onSuccess(BuildContext context) {
    FlushbarHelper.createSuccess(
      duration: const Duration(seconds: 5),
      message: S.of(context).emailRequestSent,
    ).show(context);
  }
}
