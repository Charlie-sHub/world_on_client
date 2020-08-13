import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/splash/widget/splash_progress_indicator.dart';
import 'package:worldon/views/splash/widget/world_on_logo.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.map(
        initial: (_) => null,
        authenticationSuccess: (_) => context.navigator.replace(Routes.mainPage),
        authenticationFailure: (_) => context.navigator.replace(Routes.logInPage),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            WorldOnLogo(),
            SizedBox(height: 20),
            SplashProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
