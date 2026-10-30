
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../dtos/official_test_score_scale_dto.dart';
import '../../dtos/official_test_dto.dart';

class OfficialTestsRemoteDataSource {
  final SupabaseClient _supabaseClient;

  const OfficialTestsRemoteDataSource({
    required this._supabaseClient,
  });

  Future<List<OfficialTestDto>> getOfficialTests() async {
    final response = await _supabaseClient
        .from('official_tests')
        .select()
        .eq('is_published', true)
        .order('year', ascending: false);

    return response
        .map((json) => OfficialTestDto.fromJson(json))
        .toList();
  }

  Future<List<OfficialTestScoreScaleDto>> getOfficialTestScales(
      String officialTestId,
      ) async {
    final response = await _supabaseClient
        .from('official_test_scales')
        .select()
        .eq('official_test_id', officialTestId)
        .order('raw_score', ascending: true);

    return response
        .map((json) => OfficialTestScoreScaleDto.fromJson(json))
        .toList();
  }
}
