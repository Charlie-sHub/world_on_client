import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';

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
        children: const <Widget>[
          FaIcon(FontAwesomeIcons.google),
          SizedBox(width: 5),
          Text("Log In with Google"),
        ],
      ),
    );
  }
}
