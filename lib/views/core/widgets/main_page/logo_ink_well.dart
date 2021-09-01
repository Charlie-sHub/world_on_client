import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/core/assets.dart';

class LogoInkWell extends StatelessWidget {
  const LogoInkWell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () async {
        context.read<AuthenticationBloc>().add(
              const AuthenticationEvent.loggedOut(),
            );
      },
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Image(
          image: AssetImage(Assets.worldOnLogo),
        ),
      ),
    );
  }
}
