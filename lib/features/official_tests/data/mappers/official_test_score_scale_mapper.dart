
import '../../domain/entities/official_test_score_scale.dart';
import '../dtos/official_test_score_scale_dto.dart';

class OfficialTestScaleMapper {
  static OfficialTestScoreScale toEntity(OfficialTestScoreScaleDto dto) {
    return OfficialTestScoreScale(
      id: dto.id,
      officialTestId: dto.officialTestId,
      rawScore: dto.rawScore,
      scaledScore: dto.scaledScore,
      createdAt: dto.createdAt,
    );
  }

  static OfficialTestScoreScaleDto toDto(OfficialTestScoreScale entity) {
    return OfficialTestScoreScaleDto(
      id: entity.id,
      officialTestId: entity.officialTestId,
      rawScore: entity.rawScore,
      scaledScore: entity.scaledScore,
      createdAt: entity.createdAt,
    );
  }
}