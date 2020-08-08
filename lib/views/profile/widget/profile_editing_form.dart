import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

class ProfileEditingForm extends StatelessWidget {
  const ProfileEditingForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileEditingFormBloc, ProfileEditingFormState>(
      listener: (context, state) => state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => onFailure(failure, context),
          (_) => onSuccess(context),
        ),
      ),
      builder: (context, state) => state.user.isValid
          ? SingleChildScrollView(
              child: Form(
                autovalidate: state.showErrorMessages,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          UserImagePicker(),
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
          : WorldOnProgressIndicator(),
    );
  }

  Future onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          emailAlreadyInUse: (_) => "The email is already in use",
          usernameAlreadyInUse: (_) => "The username is already in use",
          orElse: () => StringConst.unknownError,
        ),
        coreDomain: (failure) => failure.coreDomainFailure.maybeMap(
          unAuthorizedError: (_) => StringConst.unauthorizedError,
          orElse: () => StringConst.unknownError,
        ),
        orElse: () => StringConst.unknownError,
      ),
    ).show(context);
  }

  void onSuccess(BuildContext context) {
    context.navigator.pop();
    context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}

class PasswordConfirmationTextField extends StatelessWidget {
  const PasswordConfirmationTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 40,
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.passwordConfirmationChanged(value),
          ),
      initialValue: context.bloc<ProfileEditingFormBloc>().state.passwordConfirmator.getOrCrash(),
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.passwordConfirmator.value.fold(
            (failure) => failure.maybeMap(
              stringMismatch: (_) => "The passwords are different",
              emptyString: (_) => "Please confirm the password",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password Confirmation",
        prefixIcon: Icon(Icons.lock_outline),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 40,
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.passwordChanged(value),
          ),
      initialValue: context.bloc<ProfileEditingFormBloc>().state.user.password.getOrCrash(),
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.user.password.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The password can't be empty",
              multiLineString: (_) => "The password can't be more than one line",
              stringExceedsLength: (_) => "The password is too long",
              // Rather superfluous
              invalidPassword: (_) => "The password is invalid",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }
}

class BirthdayPicker extends StatelessWidget {
  const BirthdayPicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        final _birthDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        context.bloc<ProfileEditingFormBloc>().add(
          ProfileEditingFormEvent.birthdayChanged(_birthDate),
        );
      },
      // TODO: Make it so the text changes to the selected date after selection or the failure
      child: const Text("Select your birthday"),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) =>
        context.bloc<ProfileEditingFormBloc>().add(
          ProfileEditingFormEvent.emailAddressChanged(value),
        ),
      initialValue: context
        .bloc<ProfileEditingFormBloc>()
        .state
        .user
        .email
        .getOrCrash(),
      validator: (_) =>
        context
          .bloc<ProfileEditingFormBloc>()
          .state
          .user
          .email
          .value
          .fold(
            (failure) =>
            failure.maybeMap(
              invalidEmail: (_) => "Invalid email",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
        ),
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "Email Address",
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () =>
        context.bloc<ProfileEditingFormBloc>().add(
          const ProfileEditingFormEvent.submitted(),
        ),
      color: WorldOnColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: const BorderSide(color: WorldOnColors.primary),
      ),
      child: const Text(
        "Submit",
        style: TextStyle(
          color: WorldOnColors.background,
          fontSize: 20,
        ),
      ),
    );
  }
}

class DescriptionTextFormField extends StatelessWidget {
  const DescriptionTextFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 300,
      initialValue: context
        .bloc<ProfileEditingFormBloc>()
        .state
        .user
        .description
        .getOrCrash(),
      onChanged: (value) =>
        context.bloc<ProfileEditingFormBloc>().add(
          ProfileEditingFormEvent.descriptionChanged(value),
        ),
      validator: (_) =>
        context
          .bloc<ProfileEditingFormBloc>()
          .state
          .user
          .username
          .value
          .fold(
            (failure) =>
            failure.maybeMap(
              emptyString: (_) => "The description can't be empty",
              multiLineString: (_) => "The description can't be more than one line",
              stringExceedsLength: (_) => "The description is too long",
              stringWithInvalidCharacters: (_) => "The description has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
        ),
      autocorrect: false,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: "Description",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 50,
      initialValue: context
        .bloc<ProfileEditingFormBloc>()
        .state
        .user
        .username
        .getOrCrash(),
      onChanged: (value) =>
        context.bloc<ProfileEditingFormBloc>().add(
          ProfileEditingFormEvent.usernameChanged(value),
        ),
      validator: (_) =>
        context
          .bloc<ProfileEditingFormBloc>()
          .state
          .user
          .username
          .value
          .fold(
            (failure) =>
            failure.maybeMap(
              emptyString: (_) => "The username can't be empty",
              multiLineString: (_) => "The username can't be more than one line",
              stringExceedsLength: (_) => "The username is too long",
              stringWithInvalidCharacters: (_) => "The username has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
        ),
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Username",
        prefixIcon: Icon(Icons.account_box),
      ),
    );
  }
}

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 50,
      initialValue: context
        .bloc<ProfileEditingFormBloc>()
        .state
        .user
        .name
        .getOrCrash(),
      onChanged: (value) =>
        context.bloc<ProfileEditingFormBloc>().add(
          ProfileEditingFormEvent.nameChanged(value),
        ),
      validator: (_) =>
        context
          .bloc<ProfileEditingFormBloc>()
          .state
          .user
          .username
          .value
          .fold(
            (failure) =>
            failure.maybeMap(
              emptyString: (_) => "The name can't be empty",
              multiLineString: (_) => "The name can't be more than one line",
              stringExceedsLength: (_) => "The name is too long",
              stringWithInvalidCharacters: (_) => "The name has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
        ),
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Name",
        prefixIcon: Icon(Icons.assignment_ind),
      ),
    );
  }
}

class UserImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: context
        .bloc<ProfileEditingFormBloc>()
        .state
        .user
        .imageFileOption
        .fold(
          () =>
          FlatButton(
            onPressed: () async => pickImage(context),
            child: const Hero(
              tag: "userImage",
              child: CircleAvatar(
                radius: 80,
                // TODO: Change to user's network image
                backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
              ),
            ),
          ),
          (imageFile) =>
          FlatButton(
            onPressed: () async => pickImage(context),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: FileImage(imageFile),
            ),
          ),
      ),
    );
  }

  Future pickImage(BuildContext context) async {
    final imagePicked = await ImagePicker().getImage(source: ImageSource.gallery);
    final imageFile = File(imagePicked.path);
    context.bloc<ProfileEditingFormBloc>().add(ProfileEditingFormEvent.imageChanged(imageFile));
  }
}
