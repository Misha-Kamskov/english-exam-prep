import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? value;
  final bool isToggle;
  final bool switchValue;
  final ValueChanged<bool>? onChanged;
  final VoidCallback? onTap;
  final bool isDanger;
  final bool showDivider;

  const SettingsTile({super.key,
    required this.icon,
    required this.label,
    this.value,
    this.isToggle = false,
    this.switchValue = false,
    this.onChanged,
    this.onTap,
    this.isDanger = false,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Color contentColor = isDanger
        ? theme.colorScheme.error
        : theme.colorScheme.onSurface;

    return Column(
      children: [
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          onTap: isToggle ? null : onTap,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          leading: Icon(
            icon,
            size: 20,
            color: isDanger ? theme.colorScheme.error : theme.colorScheme.onSurface.withOpacity(0.6),
          ),
          title: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: contentColor,
            ),
          ),
          trailing: isToggle
              ? Switch(
            value: switchValue,
            onChanged: onChanged,
            activeColor: theme.colorScheme.primary,
          )
              : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (value != null)
                Text(
                  value!,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: theme.colorScheme.onSurface.withOpacity(0.5),
                  ),
                ),
              const SizedBox(width: 4),
              Icon(
                Icons.chevron_right,
                size: 18,
                color: theme.colorScheme.onSurface.withOpacity(0.3),
              ),
            ],
          ),
        ),
        if (showDivider)
          Divider(
            height: 1,
            thickness: 1,
            indent: 16,
            endIndent: 16,
            color: theme.colorScheme.outline.withOpacity(0.5),
          ),
      ],
    );
  }
}