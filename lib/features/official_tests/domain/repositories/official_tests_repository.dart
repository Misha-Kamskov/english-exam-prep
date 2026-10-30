
import '../entities/official_test_score_scale.dart';
import '../entities/official_test.dart';

abstract class OfficialTestsRepository {
  Future<List<OfficialTest>> getOfficialTests();

  Future<List<OfficialTestScoreScale>> getOfficialTestScales(
      String officialTestId,
      );
}
