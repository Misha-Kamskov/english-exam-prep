import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../data/datasources/remote/official_tests_remote_data_source.dart';
import '../data/repositories/official_tests_repository_impl.dart';
import '../domain/repositories/official_tests_repository.dart';
import '../presentation/cubit/official_tests_cubit.dart';

void registerOfficialTestsDependencies(GetIt getIt) {
  getIt.registerLazySingleton<OfficialTestsRemoteDataSource>(
        () => OfficialTestsRemoteDataSource(
      supabaseClient: getIt<SupabaseClient>(),
    ),
  );

  getIt.registerLazySingleton<OfficialTestsRepository>(
        () => OfficialTestsRepositoryImpl(
      remoteDataSource: getIt<OfficialTestsRemoteDataSource>(),
    ),
  );

  getIt.registerFactory<OfficialTestsCubit>(
        () => OfficialTestsCubit(
      getIt<OfficialTestsRepository>(),
    ),
  );
}