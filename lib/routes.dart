import 'package:glow_sync_app/screens/billboard_screen.dart';
import 'package:glow_sync_app/screens/flashlight_screen.dart';
import 'package:glow_sync_app/screens/settings_screen.dart';
import 'package:glow_sync_app/widgets/BottomTabNavigationWidget.dart';
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(
  initialLocation: '/flashlight',
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/flashlight',
              builder: (context, state) => FlashlightScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/billboard',
              builder: (context, state) => BillboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => SettingsScreen(),
            ),
          ],
        ),
      ],
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavigation(
          navigationShell: navigationShell,
        );
      },
    ),
  ],
);
