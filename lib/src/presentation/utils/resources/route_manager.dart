import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/core/app/app_preference.dart';
import 'package:admin_template_responsive/src/core/app/di.dart';
import 'package:admin_template_responsive/src/presentation/dashboard/dashboard_page.dart';
import 'package:admin_template_responsive/src/presentation/home/home_page.dart';
import 'package:admin_template_responsive/src/presentation/profile/profile_page.dart';
import 'package:admin_template_responsive/src/presentation/registration/sign_in/sign_in_page.dart';
import 'package:admin_template_responsive/src/presentation/registration/sign_up/sign_up_page.dart';
import 'package:admin_template_responsive/src/presentation/setting/setting_page.dart';
import 'package:admin_template_responsive/src/presentation/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const splash = '/';

  static const home = '/home';
  static const profile = '/profile';
  static const setting = '/setting';

  static const signIn = '/signIn';
  static const signUp = '/signUp';
}

GlobalKey<NavigatorState> navigatorState = GlobalKey();

final router = GoRouter(
  initialLocation: AppRoutes.home,
  navigatorKey: navigatorState,
  redirect: (context, state) {
    if (getIt<AppPreference>().getBool(AppPreference.kIsLoggedIn)) {
      if (state.fullPath?.contains(AppRoutes.signIn) == true ||
          state.fullPath?.contains(AppRoutes.signUp) == true) {
        return AppRoutes.home;
      }
      return null;
    } else {
      if (state.fullPath?.contains(AppRoutes.signIn) == true ||
          state.fullPath?.contains(AppRoutes.signUp) == true) {
        return null;
      } else {
        return AppRoutes.signIn;
      }
    }
  },
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: AppRoutes.signIn,
      builder: (context, state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      path: AppRoutes.signUp,
      builder: (context, state) {
        return const SignUpPage();
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Dashboard(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) {
                return const HomePage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) {
                return const ProfilePage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.setting,
              builder: (context, state) {
                return const SettingPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
