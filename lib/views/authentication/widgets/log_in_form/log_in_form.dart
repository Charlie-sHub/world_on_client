import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/widgets/email_text_field.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_google_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_trouble_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/register_button.dart';
import 'package:worldon/views/authentication/widgets/password_text_field.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/logo/world_on_logo_title.png",
                height: 240,
                width: 220,
              ),
              const SizedBox(height: 30),
              Form(
                autovalidateMode:
                    context.read<LogInFormBloc>().state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    EmailTextField(
                      validator: (_) => _emailValidator(context),
                      eventToAdd: (String value) =>
                          context.read<LogInFormBloc>().add(
                                LogInFormEvent.emailChanged(value),
                              ),
                    ),
                    const SizedBox(height: 15),
                    PasswordTextField(
                      eventToAdd: (String value) =>
                          context.read<LogInFormBloc>().add(
                                LogInFormEvent.passwordChanged(value),
                              ),
                      validator: (_) => _passwordValidator(context),
                    ),
                    const SizedBox(height: 20),
                    const LogInButton(),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const RegisterButton(),
              Column(
                children: const [
                  SizedBox(height: 40),
                  LogInGoogleButton(),
                  SizedBox(height: 60),
                  LogInTroubleButton(),
                ],
              ),
            ],
          ),
        ),
      );

  String _passwordValidator(BuildContext context) =>
      context.read<LogInFormBloc>().state.password.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).passwordEmptyString,
              multiLineString: (_) => S.of(context).passwordMultiLineString,
              stringExceedsLength: (_) =>
                  S.of(context).passwordStringExceedsLength,
              // Rather superfluous
              invalidPassword: (_) => S.of(context).invalidPassword,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => "",
          );

  String _emailValidator(BuildContext context) =>
      context.read<LogInFormBloc>().state.email.value.fold(
            (failure) => failure.maybeMap(
              invalidEmail: (_) => S.of(context).invalidEmail,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => "",
          );
}
