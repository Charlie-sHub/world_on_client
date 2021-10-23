// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:dartz/dartz.dart' as _i13;
import 'package:flutter/material.dart' as _i12;

import '../../../domain/core/entities/experience/experience.dart' as _i15;
import '../../../domain/core/entities/tag/tag.dart' as _i16;
import '../../../domain/core/entities/user/user.dart' as _i14;
import '../../authentication/pages/forgotten_password_page.dart' as _i3;
import '../../authentication/pages/log_in_page.dart' as _i2;
import '../../authentication/pages/registration_page.dart' as _i4;
import '../../authentication/pages/welcome_page.dart' as _i5;
import '../../experience_management/pages/experience_management_page.dart'
    as _i8;
import '../../profile/pages/profile_editing_page.dart' as _i7;
import '../../splash/pages/splash_page.dart' as _i1;
import '../../store/pages/store_page.dart' as _i10;
import '../../tag_management/pages/tag_management_page.dart' as _i9;
import '../pages/main_page.dart' as _i6;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    LogInPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LogInPage());
    },
    ForgottenPasswordPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.ForgottenPasswordPage());
    },
    RegistrationPageRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.RegistrationPage(key: args.key, userOption: args.userOption));
    },
    WelcomePageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.WelcomePage());
    },
    MainPageRoute.name: (routeData) {
      final args = routeData.argsAs<MainPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.MainPage(key: args.key, isNewUser: args.isNewUser));
    },
    ProfileEditingPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileEditingPageRouteArgs>();
      return _i11.CustomPage<bool>(
          routeData: routeData,
          child: _i7.ProfileEditingPage(key: args.key, user: args.user),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ExperienceManagementPageRoute.name: (routeData) {
      final args = routeData.argsAs<ExperienceManagementPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ExperienceManagementPage(
              key: args.key, experienceOption: args.experienceOption));
    },
    TagManagementPageRoute.name: (routeData) {
      final args = routeData.argsAs<TagManagementPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i9.TagManagementPage(key: args.key, tagOption: args.tagOption));
    },
    StorePageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.StorePage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashPageRoute.name, path: '/'),
        _i11.RouteConfig(LogInPageRoute.name, path: '/log-in-page'),
        _i11.RouteConfig(ForgottenPasswordPageRoute.name,
            path: '/forgotten-password-page'),
        _i11.RouteConfig(RegistrationPageRoute.name,
            path: '/registration-page'),
        _i11.RouteConfig(WelcomePageRoute.name, path: '/welcome-page'),
        _i11.RouteConfig(MainPageRoute.name, path: '/main-page'),
        _i11.RouteConfig(ProfileEditingPageRoute.name,
            path: '/profile-editing-page'),
        _i11.RouteConfig(ExperienceManagementPageRoute.name,
            path: '/experience-management-page'),
        _i11.RouteConfig(TagManagementPageRoute.name,
            path: '/tag-management-page'),
        _i11.RouteConfig(StorePageRoute.name, path: '/store-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i11.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.LogInPage]
class LogInPageRoute extends _i11.PageRouteInfo<void> {
  const LogInPageRoute() : super(name, path: '/log-in-page');

  static const String name = 'LogInPageRoute';
}

/// generated route for [_i3.ForgottenPasswordPage]
class ForgottenPasswordPageRoute extends _i11.PageRouteInfo<void> {
  const ForgottenPasswordPageRoute()
      : super(name, path: '/forgotten-password-page');

  static const String name = 'ForgottenPasswordPageRoute';
}

/// generated route for [_i4.RegistrationPage]
class RegistrationPageRoute
    extends _i11.PageRouteInfo<RegistrationPageRouteArgs> {
  RegistrationPageRoute(
      {_i12.Key? key, required _i13.Option<_i14.User> userOption})
      : super(name,
            path: '/registration-page',
            args: RegistrationPageRouteArgs(key: key, userOption: userOption));

  static const String name = 'RegistrationPageRoute';
}

class RegistrationPageRouteArgs {
  const RegistrationPageRouteArgs({this.key, required this.userOption});

  final _i12.Key? key;

  final _i13.Option<_i14.User> userOption;
}

/// generated route for [_i5.WelcomePage]
class WelcomePageRoute extends _i11.PageRouteInfo<void> {
  const WelcomePageRoute() : super(name, path: '/welcome-page');

  static const String name = 'WelcomePageRoute';
}

/// generated route for [_i6.MainPage]
class MainPageRoute extends _i11.PageRouteInfo<MainPageRouteArgs> {
  MainPageRoute({_i12.Key? key, required bool isNewUser})
      : super(name,
            path: '/main-page',
            args: MainPageRouteArgs(key: key, isNewUser: isNewUser));

  static const String name = 'MainPageRoute';
}

class MainPageRouteArgs {
  const MainPageRouteArgs({this.key, required this.isNewUser});

  final _i12.Key? key;

  final bool isNewUser;
}

/// generated route for [_i7.ProfileEditingPage]
class ProfileEditingPageRoute
    extends _i11.PageRouteInfo<ProfileEditingPageRouteArgs> {
  ProfileEditingPageRoute({_i12.Key? key, required _i14.User user})
      : super(name,
            path: '/profile-editing-page',
            args: ProfileEditingPageRouteArgs(key: key, user: user));

  static const String name = 'ProfileEditingPageRoute';
}

class ProfileEditingPageRouteArgs {
  const ProfileEditingPageRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i14.User user;
}

/// generated route for [_i8.ExperienceManagementPage]
class ExperienceManagementPageRoute
    extends _i11.PageRouteInfo<ExperienceManagementPageRouteArgs> {
  ExperienceManagementPageRoute(
      {_i12.Key? key, required _i13.Option<_i15.Experience> experienceOption})
      : super(name,
            path: '/experience-management-page',
            args: ExperienceManagementPageRouteArgs(
                key: key, experienceOption: experienceOption));

  static const String name = 'ExperienceManagementPageRoute';
}

class ExperienceManagementPageRouteArgs {
  const ExperienceManagementPageRouteArgs(
      {this.key, required this.experienceOption});

  final _i12.Key? key;

  final _i13.Option<_i15.Experience> experienceOption;
}

/// generated route for [_i9.TagManagementPage]
class TagManagementPageRoute
    extends _i11.PageRouteInfo<TagManagementPageRouteArgs> {
  TagManagementPageRoute(
      {_i12.Key? key, required _i13.Option<_i16.Tag> tagOption})
      : super(name,
            path: '/tag-management-page',
            args: TagManagementPageRouteArgs(key: key, tagOption: tagOption));

  static const String name = 'TagManagementPageRoute';
}

class TagManagementPageRouteArgs {
  const TagManagementPageRouteArgs({this.key, required this.tagOption});

  final _i12.Key? key;

  final _i13.Option<_i16.Tag> tagOption;
}

/// generated route for [_i10.StorePage]
class StorePageRoute extends _i11.PageRouteInfo<void> {
  const StorePageRoute() : super(name, path: '/store-page');

  static const String name = 'StorePageRoute';
}
