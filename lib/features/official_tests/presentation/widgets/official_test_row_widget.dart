import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class OfficialTestRowWidget extends StatelessWidget {
  const OfficialTestRowWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: colors.onSurface,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 12),

              Icon(
                LucideIcons.chevronRight,
                size: 16,
                color: colors.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}