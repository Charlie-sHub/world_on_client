import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

import '../../../injection.dart';

class AppWidget extends StatelessWidget {
  final String environment;

  const AppWidget({
    Key key,
    @required this.environment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>()
            ..add(
              const AuthenticationEvent.authenticationCheckRequested(),
            ),
        ),
      ],
      child: MaterialApp(
        title: "World On",
        debugShowCheckedModeBanner: environment != Environment.prod,
        // TODO: Improve the theme
        // Accent and primary being the same color doesn't make much sense
        // The difference is not really noticed as many widgets have set colors, but that should be changed
        // Most if not all widget colors should depend of the theme
        theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 10,
            backgroundColor: WorldOnColors.white,
            foregroundColor: WorldOnColors.background,
          ),
          cardColor: WorldOnColors.white,
          primaryColor: WorldOnColors.primary,
          accentColor: WorldOnColors.primary,
          scaffoldBackgroundColor: WorldOnColors.background,
          appBarTheme: const AppBarTheme(
            color: WorldOnColors.background,
          ),
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: WorldOnColors.accent,
              ),
            ),
          ),
        ),
        builder: ExtendedNavigator(
          router: Router(),
        ),
      ),
    );
  }
}
