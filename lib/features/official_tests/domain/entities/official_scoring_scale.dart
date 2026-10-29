class OfficialTestScale {
  final String id;
  final String officialTestId;
  final int rawScore;
  final int scaledScore;
  final DateTime createdAt;

  const OfficialTestScale({
    required this.id,
    required this.officialTestId,
    required this.rawScore,
    required this.scaledScore,
    required this.createdAt,
  });
}