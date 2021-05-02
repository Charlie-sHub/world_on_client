// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:dartz/dartz.dart' as _i13;
import 'package:flutter/material.dart' as _i2;

import '../../../domain/core/entities/experience/experience.dart' as _i14;
import '../../../domain/core/entities/tag/tag.dart' as _i15;
import '../../../domain/core/entities/user/user.dart' as _i12;
import '../../authentication/pages/log_in_page.dart' as _i4;
import '../../authentication/pages/registration_page.dart' as _i5;
import '../../experience_management/pages/experience_management_page.dart' as _i9;
import '../../profile/pages/profile_editing_page.dart' as _i8;
import '../../splash/pages/splash_page.dart' as _i3;
import '../../store/pages/store_page.dart' as _i11;
import '../../tag_management/pages/tag_management_page.dart' as _i10;
import '../pages/main_page.dart' as _i7;
import '../pages/welcome_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i3.SplashPage());
    },
    LogInPageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i4.LogInPage());
    },
    RegistrationPageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i5.RegistrationPage());
    },
    WelcomePageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i6.WelcomePage());
    },
    MainPageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i7.MainPage());
    },
    ProfileEditingPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileEditingPageRouteArgs>();
      return _i1.CustomPage<bool>(
          routeData: routeData, child: _i8.ProfileEditingPage(key: args.key, user: args.user), transitionsBuilder: _i1.TransitionsBuilders.slideLeft, opaque: true, barrierDismissible: false);
    },
    ExperienceManagementPageRoute.name: (routeData) {
      final args = routeData.argsAs<ExperienceManagementPageRouteArgs>();
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i9.ExperienceManagementPage(key: args.key, experienceOption: args.experienceOption));
    },
    TagManagementPageRoute.name: (routeData) {
      final args = routeData.argsAs<TagManagementPageRouteArgs>();
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i10.TagManagementPage(key: args.key, tagOption: args.tagOption));
    },
    StorePageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(routeData: routeData, child: _i11.StorePage());
    }
  };
  
  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(LogInPageRoute.name, path: '/log-in-page'),
        _i1.RouteConfig(RegistrationPageRoute.name, path: '/registration-page'),
        _i1.RouteConfig(WelcomePageRoute.name, path: '/welcome-page'),
        _i1.RouteConfig(MainPageRoute.name, path: '/main-page'),
        _i1.RouteConfig(ProfileEditingPageRoute.name, path: '/profile-editing-page'),
        _i1.RouteConfig(ExperienceManagementPageRoute.name, path: '/experience-management-page'),
        _i1.RouteConfig(TagManagementPageRoute.name, path: '/tag-management-page'),
        _i1.RouteConfig(StorePageRoute.name, path: '/store-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class LogInPageRoute extends _i1.PageRouteInfo {
  const LogInPageRoute() : super(name, path: '/log-in-page');

  static const String name = 'LogInPageRoute';
}

class RegistrationPageRoute extends _i1.PageRouteInfo {
  const RegistrationPageRoute() : super(name, path: '/registration-page');

  static const String name = 'RegistrationPageRoute';
}

class WelcomePageRoute extends _i1.PageRouteInfo {
  const WelcomePageRoute() : super(name, path: '/welcome-page');

  static const String name = 'WelcomePageRoute';
}

class MainPageRoute extends _i1.PageRouteInfo {
  const MainPageRoute() : super(name, path: '/main-page');

  static const String name = 'MainPageRoute';
}

class ProfileEditingPageRoute extends _i1.PageRouteInfo<ProfileEditingPageRouteArgs> {
  ProfileEditingPageRoute({_i2.Key? key, required _i12.User user}) : super(name, path: '/profile-editing-page', args: ProfileEditingPageRouteArgs(key: key, user: user));

  static const String name = 'ProfileEditingPageRoute';
}

class ProfileEditingPageRouteArgs {
  const ProfileEditingPageRouteArgs({this.key, required this.user});

  final _i2.Key? key;

  final _i12.User user;
}

class ExperienceManagementPageRoute extends _i1.PageRouteInfo<ExperienceManagementPageRouteArgs> {
  ExperienceManagementPageRoute({_i2.Key? key, required _i13.Option<_i14.Experience> experienceOption})
      : super(name, path: '/experience-management-page', args: ExperienceManagementPageRouteArgs(key: key, experienceOption: experienceOption));

  static const String name = 'ExperienceManagementPageRoute';
}

class ExperienceManagementPageRouteArgs {
  const ExperienceManagementPageRouteArgs({this.key, required this.experienceOption});

  final _i2.Key? key;

  final _i13.Option<_i14.Experience> experienceOption;
}

class TagManagementPageRoute extends _i1.PageRouteInfo<TagManagementPageRouteArgs> {
  TagManagementPageRoute({_i2.Key? key, required _i13.Option<_i15.Tag> tagOption}) : super(name, path: '/tag-management-page', args: TagManagementPageRouteArgs(key: key, tagOption: tagOption));

  static const String name = 'TagManagementPageRoute';
}

class TagManagementPageRouteArgs {
  const TagManagementPageRouteArgs({this.key, required this.tagOption});

  final _i2.Key? key;

  final _i13.Option<_i15.Tag> tagOption;
}

class StorePageRoute extends _i1.PageRouteInfo {
  const StorePageRoute() : super(name, path: '/store-page');

  static const String name = 'StorePageRoute';
}
