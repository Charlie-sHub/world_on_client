import 'package:auto_route/auto_route.dart';
import 'package:worldon/views/authentication/pages/log_in_page.dart';
import 'package:worldon/views/authentication/pages/registration_page.dart';
import 'package:worldon/views/core/pages/main_page.dart';
import 'package:worldon/views/core/pages/welcome_page.dart';
import 'package:worldon/views/experience_management/pages/experience_management_page.dart';
import 'package:worldon/views/profile/pages/profile_editing_page.dart';
import 'package:worldon/views/splash/pages/splash_page.dart';
import 'package:worldon/views/store/pages/store_page.dart';
import 'package:worldon/views/tag_management/pages/tag_management_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(
      page: SplashPage,
      initial: true,
    ),
    MaterialRoute(page: LogInPage),
    MaterialRoute(page: RegistrationPage),
    MaterialRoute(page: WelcomePage),
    MaterialRoute(page: MainPage),
    CustomRoute<bool>(
      page: ProfileEditingPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    MaterialRoute(page: ExperienceManagementPage),
    MaterialRoute(page: TagManagementPage),
    MaterialRoute(page: StorePage),
  ],
)
class $AppRouter {}
