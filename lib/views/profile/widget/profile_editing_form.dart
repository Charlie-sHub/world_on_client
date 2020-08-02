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

class ProfileEditingForm extends StatelessWidget {
  const ProfileEditingForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Editing Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: BlocConsumer<ProfileEditingFormBloc, ProfileEditingFormState>(
        listener: (context, state) =>
          state.failureOrSuccessOption.fold(
              () => null,
              (either) =>
              either.fold(
                  (failure) => onFailure(failure, context),
                  (_) => onSuccess(context),
              ),
          ),
        builder: (context, state) =>
          Form(
            autovalidate: state.showErrorMessages,
            child: Container(
              color: WorldOnColors.white,
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
                              NameTextFormField(),
                              UsernameTextFormField(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const DescriptionTextFormField(),
                  const SubmitButton(),
                ],
              ),
            ),
          ),
      ),
    );
  }
  
  Future onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        coreData: (failure) =>
          failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            emailAlreadyInUse: (_) => "The email is already in use",
            usernameAlreadyInUse: (_) => "The username is already in use",
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
    return Container(
      child: context
        .bloc<ProfileEditingFormBloc>()
        .state
        .user
        .imageFileOption
        .fold(
          () =>
          FlatButton(
            onPressed: () async => pickImage(context),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 80,
                // TODO: Change to user's image
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
