// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moor_db_viewer/moor_db_viewer.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../../../domain/core/entities/user/user.dart';
import '../../authentication/pages/log_in_page.dart';
import '../../authentication/pages/registration_page.dart';
import '../../profile/pages/profile_editing_page.dart';
import '../../splash/pages/splash_page.dart';
import '../pages/main_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String logInPage = '/log-in-page';
  static const String registrationPage = '/registration-page';
  static const String mainPage = '/main-page';
  static const String profileEditingPage = '/profile-editing-page';
  static const String moorDbViewer = '/moor-db-viewer';
  static const all = <String>{
    splashPage,
    logInPage,
    registrationPage,
    mainPage,
    profileEditingPage,
    moorDbViewer,
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
    RouteDef(Routes.profileEditingPage, page: ProfileEditingPage),
    RouteDef(Routes.moorDbViewer, page: MoorDbViewer),
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
    ProfileEditingPage: (data) {
      final args = data.getArgs<ProfileEditingPageArguments>(nullOk: false);
      return PageRouteBuilder<bool>(
        pageBuilder: (context, animation, secondaryAnimation) => ProfileEditingPage(
          key: args.key,
          user: args.user,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      );
    },
    MoorDbViewer: (data) {
      final args = data.getArgs<MoorDbViewerArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => MoorDbViewer(args.db),
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
  
  Future<dynamic> pushRegistrationPage() =>
    push<dynamic>(Routes.registrationPage);
  
  Future<dynamic> pushMainPage() => push<dynamic>(Routes.mainPage);
  
  Future<bool> pushProfileEditingPage({
    Key key,
    @required User user,
  }) =>
    push<bool>(
      Routes.profileEditingPage,
      arguments: ProfileEditingPageArguments(key: key, user: user),
    );
  
  Future<dynamic> pushMoorDbViewer({
    @required GeneratedDatabase db,
  }) =>
    push<dynamic>(
      Routes.moorDbViewer,
      arguments: MoorDbViewerArguments(db: db),
    );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProfileEditingPage arguments holder class
class ProfileEditingPageArguments {
  final Key key;
  final User user;
  
  ProfileEditingPageArguments({this.key, @required this.user});
}

/// MoorDbViewer arguments holder class
class MoorDbViewerArguments {
  final GeneratedDatabase db;
  
  MoorDbViewerArguments({@required this.db});
}
