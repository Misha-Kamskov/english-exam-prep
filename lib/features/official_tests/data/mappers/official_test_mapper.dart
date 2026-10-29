
import '../../domain/entities/official_test.dart';
import '../dtos/official_test_dto.dart';

class OfficialTestMapper {
  const OfficialTestMapper();

  OfficialTest toEntity(OfficialTestDto dto) {
    return OfficialTest(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      year: dto.year,
      durationMinutes: dto.durationMinutes,
      isPublished: dto.isPublished,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }

  OfficialTestDto toDto(OfficialTest entity) {
    return OfficialTestDto(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      year: entity.year,
      durationMinutes: entity.durationMinutes,
      isPublished: entity.isPublished,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}
