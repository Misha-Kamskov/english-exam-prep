import 'package:english_exam_prep/core/app_initializer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_notifier.dart';

Future<void> main() async {
  await AppInitializer.init();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
  ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ThemeNotifier>();

    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeNotifier.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
