import 'package:flutter/material.dart';

class GroupHeader extends StatelessWidget {
  final String title;

  const GroupHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Color(0xFF94A3B8),
        ),
      ),
    );
  }
}