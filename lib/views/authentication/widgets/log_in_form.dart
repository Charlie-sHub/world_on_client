import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInFormBloc, LogInFormState>(
      // TODO: Find a way to better format this
      listener: (context, state) => state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => onFailure(failure, context),
          (_) => onSuccess(context),
        ),
      ),
      builder: (context, state) => Form(
        autovalidate: state.showErrorMessages,
        child: ListView(
          padding: const EdgeInsets.all(40),
          children: const <Widget>[
            WorldOnLogoImage(),
            SizedBox(height: 5),
            WorldOnTitle(),
            SizedBox(height: 10),
            UsernameTextField(),
            SizedBox(height: 3),
            PasswordTextField(),
            SizedBox(height: 7),
            LogInButton(),
            SizedBox(height: 5),
            LogInTroubleButton(),
            SizedBox(height: 5),
            LogInGoogleButton(),
            SizedBox(height: 5),
            RegisterButton(),
          ],
        ),
      ),
    );
  }

  Future onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      message: failure.maybeMap(
        authenticationDomain: (failure) => failure.authenticationDomainFailure.map(
          cancelledByUser: (_) => "Cancelled",
        ),
        authenticationData: (failure) => failure.authenticationDataFailure.map(
          invalidCredentials: (_) => "Invalid Credentials",
        ),
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          orElse: () => StringConst.unknownError,
        ),
        orElse: () => StringConst.unknownError,
      ),
      duration: const Duration(seconds: 5),
    ).show(context);
  }

  void onSuccess(BuildContext context) {
    ExtendedNavigator.of(context).pushReplacementNamed(Routes.mainPage);
    context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => ExtendedNavigator.of(context).pushNamed(Routes.registrationPage),
      color: WorldOnColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: const BorderSide(color: WorldOnColors.primary),
      ),
      child: const Text(
        "REGISTER",
        style: TextStyle(
          color: WorldOnColors.primary,
          fontSize: 20,
        ),
      ),
    );
  }
}

class LogInGoogleButton extends StatelessWidget {
  const LogInGoogleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => context.bloc<LogInFormBloc>().add(
            const LogInFormEvent.loggedInGoogle(),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FaIcon(FontAwesomeIcons.google),
          const SizedBox(width: 5),
          const Text("Log In with Google"),
        ],
      ),
    );
  }
}

class LogInTroubleButton extends StatelessWidget {
  const LogInTroubleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      // TODO: Add functionality for recovering account
      onPressed: () => null,
      child: const Text("Having trouble logging in? tap here"),
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<LogInFormBloc>().add(
            const LogInFormEvent.loggedIn(),
          ),
      color: WorldOnColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: const BorderSide(color: WorldOnColors.primary),
      ),
      child: const Text(
        "LOG IN",
        style: TextStyle(
          color: WorldOnColors.primary,
          fontSize: 20,
        ),
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
      decoration: const InputDecoration(
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
      ),
      autocorrect: false,
      obscureText: true,
      onChanged: (value) => context.bloc<LogInFormBloc>().add(
            LogInFormEvent.passwordChanged(value),
          ),
      validator: (_) => context.bloc<LogInFormBloc>().state.password.value.fold(
            // TODO: Instead of mapping just return an error string from the failure
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
      // TODO: Set maxLines and maxLength for all text fields
      decoration: const InputDecoration(
        labelText: "Username",
        prefixIcon: Icon(Icons.account_box),
      ),
      autocorrect: false,
      onChanged: (value) => context.bloc<LogInFormBloc>().add(
            LogInFormEvent.usernameChanged(value),
          ),
      validator: (_) => context.bloc<LogInFormBloc>().state.username.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The username can't be empty",
              multiLineString: (_) => "The username can't be more than one line",
              stringExceedsLength: (_) => "The username is too long",
              stringWithInvalidCharacters: (_) => "The username has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
    );
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

class WorldOnLogoImage extends StatelessWidget {
  const WorldOnLogoImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/world_on_logo.jpg'),
      height: 180,
      width: 180,
    );
  }
}
