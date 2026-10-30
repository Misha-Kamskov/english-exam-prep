import 'package:english_exam_prep/features/official_tests/presentation/widgets/official_test_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/di/injection.dart';
import '../../../../shared/widgets/page_header.dart';
import '../cubit/official_tests_cubit.dart';
import '../cubit/official_tests_state.dart';

class OfficialTestsScreen extends StatelessWidget {
  const OfficialTestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return BlocProvider(
      create: (context) => getIt<OfficialTestsCubit>()..loadTests(),
      child: ColoredBox(
        color: theme.scaffoldBackgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const PageHeader(
                  title: 'Офіційні тести',
                ),

                const SizedBox(height: 24),

                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: colors.surface,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: colors.outline),
                    ),
                    child: BlocBuilder<OfficialTestsCubit, OfficialTestsState>(
                      builder: (context, state) {

                        if (state is OfficialTestsLoading) {
                          return const Center(child: CircularProgressIndicator());
                        }

                        if (state is OfficialTestsLoaded && state.tests.isNotEmpty) {
                          return ListView.separated(
                            itemCount: state.tests.length,
                            separatorBuilder: (context, index) => Divider(
                              height: 1,
                              thickness: 1,
                              color: colors.outline,
                            ),
                            itemBuilder: (context, index) {
                              final test = state.tests[index];
                              return OfficialTestRowWidget(
                                title: test.title,
                                onTap: () {

                                },
                              );
                            },
                          );
                        }

                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  LucideIcons.slidersHorizontal,
                                  size: 20,
                                  color: colors.outline,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Нічого не знайдено',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: colors.onSurface,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}