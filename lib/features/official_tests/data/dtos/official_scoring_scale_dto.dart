
import '../../domain/entities/official_scoring_scale.dart';

class OfficialTestScaleDto {
  final String id;
  final String officialTestId;
  final int rawScore;
  final int scaledScore;
  final DateTime createdAt;

  const OfficialTestScaleDto({
    required this.id,
    required this.officialTestId,
    required this.rawScore,
    required this.scaledScore,
    required this.createdAt,
  });

  factory OfficialTestScaleDto.fromJson(Map<String, dynamic> json) {
    return OfficialTestScaleDto(
      id: json['id'] as String,
      officialTestId: json['official_test_id'] as String,
      rawScore: json['raw_score'] as int,
      scaledScore: json['scaled_score'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'official_test_id': officialTestId,
      'raw_score': rawScore,
      'scaled_score': scaledScore,
      'created_at': createdAt.toIso8601String(),
    };
  }

  OfficialTestScale toEntity() {
    return OfficialTestScale(
      id: id,
      officialTestId: officialTestId,
      rawScore: rawScore,
      scaledScore: scaledScore,
      createdAt: createdAt,
    );
  }

  factory OfficialTestScaleDto.fromEntity(OfficialTestScale entity) {
    return OfficialTestScaleDto(
      id: entity.id,
      officialTestId: entity.officialTestId,
      rawScore: entity.rawScore,
      scaledScore: entity.scaledScore,
      createdAt: entity.createdAt,
    );
  }
}
