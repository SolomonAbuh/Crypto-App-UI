import 'package:crypto_app_ui/fade_navigation_transition.dart';
import 'package:crypto_app_ui/pages/app_wrapper.dart';
import 'package:crypto_app_ui/pages/assets_page.dart';
import 'package:crypto_app_ui/pages/home_page.dart';
import 'package:crypto_app_ui/pages/onboard_page.dart';
import 'package:crypto_app_ui/pages/profile_page.dart';
import 'package:crypto_app_ui/pages/trade_page.dart';

import 'package:go_router/go_router.dart';

const _onboard = '/onboard';
const _home = '/home';
const _assets = '/assets';
const _trade = '/trade';
const _profile = '/profile';

class AppRoutes {
  static String get onboard => _onboard;
  static String get home => _home;
  static String get assets => _assets;
  static String get trade => _trade;
  static String get profile => _profile;
}

final router = GoRouter(
  initialLocation: _onboard,
  routes: [
    GoRoute(
      path: _onboard,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const OnboardPage(),
      ),
    ),
    ShellRoute(
      builder: (context, state, child) => AppWrapper(
        child: child,
      ),
      routes: [
        GoRoute(
          path: _home,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const HomePage(),
          ),
        ),
        GoRoute(
          path: _assets,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const AssetsPage(),
          ),
        ),
        GoRoute(
          path: _trade,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const TradePage(),
          ),
        ),
        GoRoute(
          path: _profile,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const ProfilePage(),
          ),
        ),
      ],
    )
  ],
);


