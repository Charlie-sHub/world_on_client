import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

import '../../../injection.dart';

class AppWidget extends StatelessWidget {
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
        // debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: WorldOnColors.primary,
          accentColor: WorldOnColors.accent,
          scaffoldBackgroundColor: WorldOnColors.background,
          appBarTheme: AppBarTheme(color: WorldOnColors.background),
          inputDecorationTheme: InputDecorationTheme(
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
