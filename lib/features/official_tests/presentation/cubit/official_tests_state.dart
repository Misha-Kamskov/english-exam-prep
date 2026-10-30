import '../../domain/entities/official_test.dart';

abstract class OfficialTestsState {
  const OfficialTestsState();
}

class OfficialTestsInitial extends OfficialTestsState {
  const OfficialTestsInitial();
}

class OfficialTestsLoading extends OfficialTestsState {
  const OfficialTestsLoading();
}

class OfficialTestsLoaded extends OfficialTestsState {
  final List<OfficialTest> tests;

  const OfficialTestsLoaded({
    required this.tests,
  });
}

class OfficialTestsError extends OfficialTestsState {
  final String message;

  const OfficialTestsError({
    required this.message,
  });
}