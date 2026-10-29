
import '../../domain/entities/official_scoring_scale.dart';
import '../dtos/official_scoring_scale_dto.dart';

class OfficialTestScaleMapper {
  const OfficialTestScaleMapper();

  OfficialTestScale toEntity(OfficialTestScaleDto dto) {
    return OfficialTestScale(
      id: dto.id,
      officialTestId: dto.officialTestId,
      rawScore: dto.rawScore,
      scaledScore: dto.scaledScore,
      createdAt: dto.createdAt,
    );
  }

  OfficialTestScaleDto toDto(OfficialTestScale entity) {
    return OfficialTestScaleDto(
      id: entity.id,
      officialTestId: entity.officialTestId,
      rawScore: entity.rawScore,
      scaledScore: entity.scaledScore,
      createdAt: entity.createdAt,
    );
  }
}
