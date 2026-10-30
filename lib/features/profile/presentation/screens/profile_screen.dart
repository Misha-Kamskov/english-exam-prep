import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/theme_notifier.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final isDark =
        context.watch<ThemeNotifier>().themeMode == ThemeMode.dark;

    return ColoredBox(
      color: theme.scaffoldBackgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Профіль',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                  color: colorScheme.onSurface,
                ),
              ),

              const SizedBox(height: 28),

              // Section title
              Text(
                'ВИГЛЯД',
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(height: 10),

              // Theme settings card
              Container(
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorScheme.outline,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: [
                      // Icon
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: colorScheme.primary.withValues(
                            alpha: 0.10,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          isDark ? LucideIcons.moon : LucideIcons.sun,
                          size: 19,
                          color: colorScheme.primary,
                        ),
                      ),

                      const SizedBox(width: 12),

                      // Label
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Темна тема',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              isDark ? 'Увімкнено' : 'Вимкнено',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Theme switch
                      Switch(
                        value: isDark,
                        activeThumbColor: colorScheme.onPrimary,
                        activeTrackColor: colorScheme.primary,
                        onChanged: (value) {
                          context.read<ThemeNotifier>().setThemeMode(
                            value
                                ? ThemeMode.dark
                                : ThemeMode.light,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

