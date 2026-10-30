import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/official_tests/di/official_tests_di.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Core dependencies
  getIt.registerLazySingleton<SupabaseClient>(
        () => Supabase.instance.client,
  );

  // Feature dependencies
  registerOfficialTestsDependencies(getIt);
}