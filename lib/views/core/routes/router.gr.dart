// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../domain/core/entities/experience/experience.dart';
import '../../../domain/core/entities/tag/tag.dart';
import '../../../domain/core/entities/user/user.dart';
import '../../authentication/pages/log_in_page.dart';
import '../../authentication/pages/registration_page.dart';
import '../../experience_management/pages/experience_management_page.dart';
import '../../profile/pages/profile_editing_page.dart';
import '../../splash/pages/splash_page.dart';
import '../../store/pages/store_page.dart';
import '../../tag_management/pages/tag_management_page.dart';
import '../pages/main_page.dart';
import '../pages/welcome_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String logInPage = '/log-in-page';
  static const String registrationPage = '/registration-page';
  static const String welcomePage = '/welcome-page';
  static const String mainPage = '/main-page';
  static const String profileEditingPage = '/profile-editing-page';
  static const String experienceManagementPage = '/experience-management-page';
  static const String tagManagementPage = '/tag-management-page';
  static const String storePage = '/store-page';
  static const all = <String>{
    splashPage,
    logInPage,
    registrationPage,
    welcomePage,
    mainPage,
    profileEditingPage,
    experienceManagementPage,
    tagManagementPage,
    storePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.logInPage, page: LogInPage),
    RouteDef(Routes.registrationPage, page: RegistrationPage),
    RouteDef(Routes.welcomePage, page: WelcomePage),
    RouteDef(Routes.mainPage, page: MainPage),
    RouteDef(Routes.profileEditingPage, page: ProfileEditingPage),
    RouteDef(Routes.experienceManagementPage, page: ExperienceManagementPage),
    RouteDef(Routes.tagManagementPage, page: TagManagementPage),
    RouteDef(Routes.storePage, page: StorePage),
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
    WelcomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomePage(),
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
    ExperienceManagementPage: (data) {
      final args = data.getArgs<ExperienceManagementPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExperienceManagementPage(
          key: args.key,
          experienceOption: args.experienceOption,
        ),
        settings: data,
      );
    },
    TagManagementPage: (data) {
      final args = data.getArgs<TagManagementPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => TagManagementPage(
          key: args.key,
          tagOption: args.tagOption,
        ),
        settings: data,
      );
    },
    StorePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StorePage(),
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

  Future<dynamic> pushWelcomePage() => push<dynamic>(Routes.welcomePage);

  Future<dynamic> pushMainPage() => push<dynamic>(Routes.mainPage);

  Future<bool> pushProfileEditingPage({
    Key key,
    @required User user,
  }) =>
      push<bool>(
        Routes.profileEditingPage,
        arguments: ProfileEditingPageArguments(key: key, user: user),
      );

  Future<dynamic> pushExperienceManagementPage({
    Key key,
    @required Option<Experience> experienceOption,
  }) =>
      push<dynamic>(
        Routes.experienceManagementPage,
        arguments: ExperienceManagementPageArguments(key: key, experienceOption: experienceOption),
      );

  Future<dynamic> pushTagManagementPage({
    Key key,
    @required Option<Tag> tagOption,
  }) =>
      push<dynamic>(
        Routes.tagManagementPage,
        arguments: TagManagementPageArguments(key: key, tagOption: tagOption),
      );

  Future<dynamic> pushStorePage() => push<dynamic>(Routes.storePage);
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

/// ExperienceManagementPage arguments holder class
class ExperienceManagementPageArguments {
  final Key key;
  final Option<Experience> experienceOption;

  ExperienceManagementPageArguments({this.key, @required this.experienceOption});
}

/// TagManagementPage arguments holder class
class TagManagementPageArguments {
  final Key key;
  final Option<Tag> tagOption;
  TagManagementPageArguments({this.key, @required this.tagOption});
}
