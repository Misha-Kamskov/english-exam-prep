import 'package:english_exam_prep/features/profile/presentation/widgets/group_header.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../widgets/settings_group.dart';
import '../widgets/settings_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xFFF8FAFC),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const GroupHeader(title: 'Налаштування'),
              SettingsGroup(
                children: [
                  SettingsTile(
                    icon: LucideIcons.moon,
                    label: 'Темна тема',
                    isToggle: true,
                    switchValue: true,
                    onChanged: (isDark) {},
                    showDivider: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
