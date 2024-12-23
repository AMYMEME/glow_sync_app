import 'package:flutter/material.dart';
import 'package:glow_sync_app/utils/constants.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavigation({
    required this.navigationShell,
    super.key,
  });

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(navigationShell.currentIndex == 0
            ? kFlashlightTitle
            : navigationShell.currentIndex == 1
                ? kBillboardTitle
                : kSettingsTitle),
      ),
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(kFlashlightIcon),
            label: kFlashlightTitle,
          ),
          NavigationDestination(
            icon: Icon(kBillboardIcon),
            label: kBillboardTitle,
          ),
          NavigationDestination(
            icon: Icon(kSettingsIcon),
            label: kSettingsTitle,
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
