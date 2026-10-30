
class OfficialTestScoreScaleDto {
  final String id;
  final String officialTestId;
  final int rawScore;
  final int scaledScore;
  final DateTime createdAt;

  const OfficialTestScoreScaleDto({
    required this.id,
    required this.officialTestId,
    required this.rawScore,
    required this.scaledScore,
    required this.createdAt,
  });

  factory OfficialTestScoreScaleDto.fromJson(Map<String, dynamic> json) {
    return OfficialTestScoreScaleDto(
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
}
