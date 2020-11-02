import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart' as router;

import '../../../injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key key,
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
        debugShowCheckedModeBanner: Provider.of<String>(context) != Environment.prod,
        theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Colors.white,
            trackShape: const RoundedRectSliderTrackShape(),
            trackHeight: 5,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 28),
            tickMarkShape: const RoundSliderTickMarkShape(),
            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
            showValueIndicator: ShowValueIndicator.always,
          ),
          bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 10,
            backgroundColor: WorldOnColors.white,
            foregroundColor: WorldOnColors.background,
          ),
          cardTheme: const CardTheme(
            shape: RoundedRectangleBorder(),
            color: WorldOnColors.white,
          ),
          primaryColor: WorldOnColors.primary,
          accentColor: WorldOnColors.accent,
          scaffoldBackgroundColor: WorldOnColors.background,
          appBarTheme: AppBarTheme.of(context).copyWith(
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
        builder: ExtendedNavigator.builder<router.Router>(
          router: router.Router(),
        ),
      ),
    );
  }
}
