// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/authentication/pages/log_in_page.dart';
import 'package:worldon/views/authentication/pages/registration_page.dart';
import 'package:worldon/views/core/pages/main_page.dart';
import 'package:worldon/views/splash/pages/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String logInPage = '/log-in-page';
  static const String registrationPage = '/registration-page';
  static const String mainPage = '/main-page';
  static const all = <String>{
    splashPage,
    logInPage,
    registrationPage,
    mainPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.logInPage, page: LogInPage),
    RouteDef(Routes.registrationPage, page: RegistrationPage),
    RouteDef(Routes.mainPage, page: MainPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LogInPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LogInPage(),
        settings: data,
      );
    },
    RegistrationPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegistrationPage(),
        settings: data,
      );
    },
    MainPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainPage(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => pushNamed<dynamic>(Routes.splashPage);

  Future<dynamic> pushLogInPage() => pushNamed<dynamic>(Routes.logInPage);

  Future<dynamic> pushRegistrationPage() => pushNamed<dynamic>(Routes.registrationPage);

  Future<dynamic> pushMainPage() => pushNamed<dynamic>(Routes.mainPage);
}
