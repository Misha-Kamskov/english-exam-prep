class OfficialTest {
  final String id;
  final String title;
  final String? description;
  final int? year;
  final int durationMinutes;
  final bool isPublished;
  final DateTime createdAt;
  final DateTime updatedAt;

  const OfficialTest({
    required this.id,
    required this.title,
    this.description,
    this.year,
    required this.durationMinutes,
    required this.isPublished,
    required this.createdAt,
    required this.updatedAt,
  });
}