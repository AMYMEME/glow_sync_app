import 'package:flutter/material.dart';
import 'package:glow_sync_app/routes.dart';
import 'package:glow_sync_app/themes/theme_provider.dart';
import 'package:glow_sync_app/utils/constants.dart';
import 'package:glow_sync_app/themes/theme_constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Themeprovider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: mainRouter,
      title: kAppTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
