import 'package:flutter/material.dart';
import 'package:glow_sync_app/screens/rear_flashlight_screen.dart';
import 'package:glow_sync_app/screens/front_flashlight_screen.dart';

class FlashlightScreen extends StatelessWidget {
  const FlashlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: '후면 플래시'),
              Tab(text: '전면 플래시'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                RearFlashlightScreen(),
                FrontFlashlightScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
