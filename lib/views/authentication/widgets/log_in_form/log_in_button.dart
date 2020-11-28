import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

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
      child: Text(
        S.of(context).logIn,
        style: const TextStyle(
          color: WorldOnColors.primary,
          fontSize: 20,
        ),
      ),
    );
  }
}
