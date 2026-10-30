import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

enum PracticeModeType {
  officialTests(
    title: 'Офіційні тести',
    subtitle: 'Реальні ЗНО/НМТ',
    icon: LucideIcons.archive,
  );

  const PracticeModeType({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;
}