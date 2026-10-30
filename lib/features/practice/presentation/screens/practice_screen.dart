import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../models/practice_mode.dart';
import '../widgets/practice_mode_card.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  void _handleModeTap(BuildContext context, PracticeModeType mode) {
    switch (mode) {
      case PracticeModeType.officialTests:
        context.push('/official_tests');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final modes = PracticeModeType.values;

    return ColoredBox(
      color: theme.scaffoldBackgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Практика',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                  color: colors.onSurface,
                ),
              ),
              const SizedBox(height: 22),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modes.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  final modeType = modes[index];

                  return PracticeModeCard(
                    mode: modeType,
                    onTap: () => _handleModeTap(context, modeType),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

