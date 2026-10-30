import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/official_tests_repository.dart';
import 'official_tests_state.dart';

class OfficialTestsCubit extends Cubit<OfficialTestsState> {
  final OfficialTestsRepository _repository;

  OfficialTestsCubit(this._repository)
      : super(const OfficialTestsInitial());

  Future<void> loadTests() async {
    emit(const OfficialTestsLoading());

    try {
      final tests = await _repository.getOfficialTests();

      emit(OfficialTestsLoaded(tests: tests));
    } catch (e) {
      emit(OfficialTestsError(message: e.toString()));
    }
  }
}