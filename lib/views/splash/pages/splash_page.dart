import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.map(
        initial: (_) => null,
        authenticationSuccess: (_) => context.navigator.popAndPush(Routes.mainPage),
        authenticationFailure: (_) => context.navigator.popAndPush(Routes.logInPage),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            WorldOnLogo(),
            SizedBox(height: 20),
            ProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class WorldOnLogo extends StatelessWidget {
  const WorldOnLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/world_on_logo.jpg'),
      height: 300,
      width: 300,
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
