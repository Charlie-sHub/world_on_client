import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

import '../../../injection.dart';

class AppWidget extends StatelessWidget {
  AppWidget({
    Key? key,
  }) : super(key: key);

  final _router = AppRouter();

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
      child: MaterialApp.router(
        title: "World On",
        debugShowCheckedModeBanner: Provider.of<String>(context) != Environment.prod,
        theme: ThemeData.dark().copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          buttonBarTheme: const ButtonBarThemeData(
            alignment: MainAxisAlignment.spaceAround,
          ),
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
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: false,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 10,
            backgroundColor: WorldOnColors.white,
            foregroundColor: WorldOnColors.background,
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 10,
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
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      ),
    );
  }
}
