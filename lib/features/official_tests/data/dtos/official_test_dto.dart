

class OfficialTestDto {
  final String id;
  final String title;
  final String? description;
  final int? year;
  final int durationMinutes;
  final bool isPublished;
  final DateTime createdAt;
  final DateTime updatedAt;

  const OfficialTestDto({
    required this.id,
    required this.title,
    this.description,
    this.year,
    required this.durationMinutes,
    required this.isPublished,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OfficialTestDto.fromJson(Map<String, dynamic> json) {
    return OfficialTestDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      year: json['year'] as int?,
      durationMinutes: json['duration_minutes'] as int,
      isPublished: json['is_published'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'year': year,
      'duration_minutes': durationMinutes,
      'is_published': isPublished,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

}
