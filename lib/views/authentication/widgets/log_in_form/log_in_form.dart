import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/world_on_image.dart';
import 'package:worldon/views/authentication/widgets/registration_form/submit_register_button.dart';

import '../password_text_field.dart';
import '../username_text_field.dart';
import '../world_on_title.dart';
import 'log_in_button.dart';
import 'log_in_google_button.dart';
import 'log_in_trouble_button.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Forms should only have the relevant children
    // It doesn't make sense for the logo and register buttons to be part of the form for example
    return Form(
      autovalidate: context.bloc<LogInFormBloc>().state.showErrorMessages,
      child: ListView(
        padding: const EdgeInsets.all(40),
        children: <Widget>[
          const WorldOnLogoImage(),
          const SizedBox(height: 5),
          const WorldOnTitle(),
          const SizedBox(height: 10),
          UsernameTextField(
            eventToAdd: (String value) => context.bloc<LogInFormBloc>().add(
                  LogInFormEvent.usernameChanged(value),
                ),
          ),
          const SizedBox(height: 3),
          PasswordTextField(
            eventToAdd: (String value) => context.bloc<LogInFormBloc>().add(
                  LogInFormEvent.passwordChanged(value),
                ),
          ),
          const SizedBox(height: 7),
          const LogInButton(),
          const SizedBox(height: 5),
          const LogInTroubleButton(),
          const SizedBox(height: 5),
          const LogInGoogleButton(),
          const SizedBox(height: 5),
          const SubmitRegisterButton(),
        ],
      ),
    );
  }
}
