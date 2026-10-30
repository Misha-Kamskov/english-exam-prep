import '../../domain/entities/official_test_score_scale.dart';
import '../../domain/entities/official_test.dart';
import '../../domain/repositories/official_tests_repository.dart';
import '../datasources/remote/official_tests_remote_data_source.dart';
import '../mappers/official_test_mapper.dart';
import '../mappers/official_test_score_scale_mapper.dart';

class OfficialTestsRepositoryImpl implements OfficialTestsRepository {
  final OfficialTestsRemoteDataSource _remoteDataSource;

  const OfficialTestsRepositoryImpl({
    required this._remoteDataSource,
  });

  @override
  Future<List<OfficialTest>> getOfficialTests() async {
    final dtos = await _remoteDataSource.getOfficialTests();

    return dtos
        .map(OfficialTestMapper.toEntity)
        .toList();
  }

  @override
  Future<List<OfficialTestScoreScale>> getOfficialTestScales(
      String officialTestId,
      ) async {
    final dtos = await _remoteDataSource.getOfficialTestScales(
      officialTestId,
    );

    return dtos
        .map(OfficialTestScaleMapper.toEntity)
        .toList();
  }
}