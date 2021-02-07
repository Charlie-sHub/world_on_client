import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/splash/widgets/splash_progress_indicator.dart';
import 'package:worldon/views/splash/widgets/world_on_logo_big.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.map(
        initial: (_) => null,
        authenticated: (_) => context.navigator.replace(Routes.mainPage),
        unAuthenticated: (_) => context.navigator.replace(Routes.logInPage),
      ),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            WorldOnLogoBig(),
            SizedBox(height: 20),
            SplashProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
