import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.map(
        initial: (_) => null,
        authenticated: (_) => context.router.replace(const MainPageRoute()),
        unAuthenticated: (_) => context.router.replace(const LogInPageRoute()),
      ),
      child: Scaffold(
        body: Center(
          child: WorldOnPlasma(),
        ),
      ),
    );
  }
}
