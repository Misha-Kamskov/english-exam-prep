import 'package:english_exam_prep/core/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'di/injection.dart';

class AppInitializer {
  static Future<void> init() async {

    WidgetsFlutterBinding.ensureInitialized();
    await _systemUiInit();
    await _initSupbase();
    await _initDI();

  }

  static Future<void> _initSupbase() async {
    await Supabase.initialize(
      url: AppConfig.supabaseUrl,
      publishableKey: AppConfig.supabasePublishableKey,
    );
  }

  static Future<void> _initDI() async {
    await configureDependencies();
  }


  static Future<void> _systemUiInit() async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }
}