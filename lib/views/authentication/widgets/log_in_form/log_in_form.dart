import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_google_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_trouble_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/register_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/world_on_logo_medium.dart';
import 'package:worldon/views/authentication/widgets/password_text_field.dart';
import 'package:worldon/views/authentication/widgets/world_on_title.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

import '../email_text_field.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Forms should only have the relevant children
    // It doesn't make sense for the logo and register buttons to be part of the form for example
    return Form(
      autovalidateMode: context.bloc<LogInFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const WorldOnLogoMedium(),
              const SizedBox(height: 5),
              const WorldOnTitle(),
              const SizedBox(height: 10),
              EmailTextField(
                validator: (_) => _emailValidator(context),
                eventToAdd: (String value) => context.bloc<LogInFormBloc>().add(
                      LogInFormEvent.emailChanged(value),
                    ),
              ),
              const SizedBox(height: 3),
              PasswordTextField(
                eventToAdd: (String value) => context.bloc<LogInFormBloc>().add(
                      LogInFormEvent.passwordChanged(value),
                    ),
                validator: (_) => _passwordValidator(context),
              ),
              const SizedBox(height: 7),
              const LogInButton(),
              const SizedBox(height: 5),
              const LogInGoogleButton(),
              const SizedBox(height: 5),
              const LogInTroubleButton(),
              const SizedBox(height: 5),
              const RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }

  String _passwordValidator(BuildContext context) {
    return context.bloc<LogInFormBloc>().state.password.value.fold(
          (failure) => failure.maybeMap(
            emptyString: (_) => "The password can't be empty",
            multiLineString: (_) => "The password can't be more than one line",
            stringExceedsLength: (_) => "The password is too long",
            // Rather superfluous
            invalidPassword: (_) => "The password is invalid",
            orElse: () => StringConst.unknownError,
          ),
          (_) => null,
        );
  }

  String _emailValidator(BuildContext context) {
    return context.bloc<LogInFormBloc>().state.email.value.fold(
          (failure) => failure.maybeMap(
            invalidEmail: (_) => "The email is not valid",
            orElse: () => StringConst.unknownError,
          ),
          (_) => null,
        );
  }
}
