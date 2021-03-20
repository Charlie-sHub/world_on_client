import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class LogInGoogleButton extends StatelessWidget {
  const LogInGoogleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => context.read<LogInFormBloc>().add(
            const LogInFormEvent.loggedInGoogle(),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const FaIcon(FontAwesomeIcons.google),
          const SizedBox(width: 5),
          Text(S.of(context).logInGoogle),
        ],
      ),
    );
  }
}
