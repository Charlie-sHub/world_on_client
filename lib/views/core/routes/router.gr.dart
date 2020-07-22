// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../authentication/pages/log_in_page.dart';
import '../../authentication/pages/registration_page.dart';
import '../../splash/pages/splash_page.dart';
import '../pages/main_page.dart';

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
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LogInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LogInPage(),
        settings: data,
      );
    },
    RegistrationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegistrationPage(),
        settings: data,
      );
    },
    MainPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushLogInPage() => push<dynamic>(Routes.logInPage);

  Future<dynamic> pushRegistrationPage() => push<dynamic>(Routes.registrationPage);

  Future<dynamic> pushMainPage() => push<dynamic>(Routes.mainPage);
}
