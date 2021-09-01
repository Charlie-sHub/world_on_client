import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<LogInFormBloc>().add(
            const LogInFormEvent.loggedIn(),
          ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.primary,
        ),
      ),
      child: Text(
        S.of(context).logIn,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
