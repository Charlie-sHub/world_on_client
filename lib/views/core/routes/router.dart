import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:worldon/views/authentication/pages/log_in_page.dart';
import 'package:worldon/views/authentication/pages/registration_page.dart';
import 'package:worldon/views/core/pages/main_page.dart';
import 'package:worldon/views/profile/pages/profile_editing_page.dart';
import 'package:worldon/views/splash/pages/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: LogInPage),
    MaterialRoute(page: RegistrationPage),
    MaterialRoute(page: MainPage),
    CustomRoute<bool>(
      page: ProfileEditingPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
class $Router {}
