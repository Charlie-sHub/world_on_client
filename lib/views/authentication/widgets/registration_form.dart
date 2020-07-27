import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationFormBloc, RegistrationFormState>(
      listener: (context, state) => state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => onFailure(failure, context),
          (_) => onSuccess(context),
        ),
      ),
      // TODO: Check how to initialize this form with a google user or similar
      // RegistrationFormEvent.initialized() Does get the user but the initialValue of the TextFormFields doesn't change
      // Also gotta find a way to add that event only once and at the start, maybe a boolean in the state itself
      builder: (context, state) => Form(
        autovalidate: state.showErrorMessages,
        child: ListView(
          padding: const EdgeInsets.all(40),
          children: const <Widget>[
            WorldOnTitle(),
            SizedBox(height: 10),
            Divider(color: Colors.grey),
            SizedBox(height: 10),
            // TODO: Implement images
            PhotoPlaceholder(),
            SizedBox(height: 10),
            UsernameTextField(),
            SizedBox(height: 8),
            NameTextField(),
            SizedBox(height: 8),
            EmailTextField(),
            SizedBox(height: 8),
            DescriptionTextField(),
            SizedBox(height: 8),
            BirthdayButton(),
            SizedBox(height: 8),
            PasswordTextField(),
            SizedBox(height: 8),
            PasswordConfirmationTextField(),
            SizedBox(height: 8),
            EULACheckBox(),
            SizedBox(height: 8),
            // TODO: Add the interest selection, at least a placeholder
            RegisterButton(),
          ],
        ),
      ),
    );
  }

  Future onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      message: failure.maybeMap(
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          emailAlreadyInUse: (_) => "The email is already in use",
          usernameAlreadyInUse: (_) => "The username is already in use",
          orElse: () => StringConst.unknownError,
        ),
        orElse: () => StringConst.unknownError,
      ),
      duration: const Duration(seconds: 5),
    ).show(context);
  }

  void onSuccess(BuildContext context) {
    context.navigator.popAndPush(Routes.mainPage);
    context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}

class WorldOnTitle extends StatelessWidget {
  const WorldOnTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "WORLD ON",
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class PhotoPlaceholder extends StatelessWidget {
  const PhotoPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Icon(
        Icons.photo_camera,
        size: 80,
      ),
    );
  }
}

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.usernameChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.username.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The username can't be empty",
              multiLineString: (_) => "The username can't be more than one line",
              stringExceedsLength: (_) => "The username is too long",
              stringWithInvalidCharacters: (_) => "The username has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "Username",
        prefixIcon: Icon(Icons.account_box),
      ),
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.nameChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The name can't be empty",
              multiLineString: (_) => "The name can't be more than one line",
              stringExceedsLength: (_) => "The name is too long",
              stringWithInvalidCharacters: (_) => "The name has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "Name",
        prefixIcon: Icon(Icons.assignment_ind),
      ),
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
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.emailAddressChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.email.value.fold(
            (failure) => failure.maybeMap(
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

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.description.value.fold(
          (failure) =>
          failure.maybeMap(
            emptyString: (_) => "The description can't be empty",
            stringExceedsLength: (_) => "The description is too long",
            orElse: () => StringConst.unknownError,
          ),
          (_) => null,
      ),
      autocorrect: false,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: "Tell us about you!",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}

class BirthdayButton extends StatelessWidget {
  const BirthdayButton({
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
        context.bloc<RegistrationFormBloc>().add(
          RegistrationFormEvent.birthdayChanged(_birthDate),
        );
      },
      // TODO: Make it so the text changes to the selected date after selection or the failure
      child: const Text("Select your birthday"),
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
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
        RegistrationFormEvent.passwordChanged(value),
      ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.password.value.fold(
          (failure) =>
          failure.maybeMap(
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
      decoration: InputDecoration(
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }
}

class PasswordConfirmationTextField extends StatelessWidget {
  const PasswordConfirmationTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
        RegistrationFormEvent.passwordConfirmationChanged(value),
      ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.passwordConfirmator.value.fold(
          (failure) =>
          failure.maybeMap(
            stringMismatch: (_) => "The passwords are different",
            orElse: () => StringConst.unknownError,
          ),
          (_) => null,
      ),
      autocorrect: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password Confirmation",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }
}

class EULACheckBox extends StatelessWidget {
  const EULACheckBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      // TODO: Implement this
      // This is the EULA agreement
      title: const Text("Do you agree with blah blah blah"),
      value: true,
      onChanged: (value) {},
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<RegistrationFormBloc>().add(
        const RegistrationFormEvent.submitted(),
      ),
      color: WorldOnColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: const BorderSide(color: WorldOnColors.primary),
      ),
      child: const Text(
        "START NOW",
        style: TextStyle(
          color: WorldOnColors.background,
          fontSize: 20,
        ),
      ),
    );
  }
}
