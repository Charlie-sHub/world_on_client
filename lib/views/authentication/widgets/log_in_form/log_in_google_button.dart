import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';

class LogInGoogleButton extends StatelessWidget {
  const LogInGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GoogleAuthButton(
        style: const AuthButtonStyle(
          buttonType: AuthButtonType.icon,
        ),
        onPressed: () => context.read<LogInFormBloc>().add(
              const LogInFormEvent.loggedInGoogle(),
            ),
      );
}
