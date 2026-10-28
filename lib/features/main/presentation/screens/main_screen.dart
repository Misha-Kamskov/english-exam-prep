import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: SizedBox(
        height: 116,
        child: BottomNavigationBar(
          items: _buildBottomNavBarItems,
          currentIndex: navigationShell.currentIndex,
          onTap: (index) => navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          ),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Color(0xFFF8FAFC),
          selectedItemColor: Color(0xFF2563EB),
          unselectedItemColor: Color(0xFF0F172A).withOpacity(0.4),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          iconSize: 20,
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> get _buildBottomNavBarItems => [
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Icon(LucideIcons.graduationCap),
      ),
      label: 'Практика',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Icon(LucideIcons.userRound),
      ),
      label: 'Профіль',
    ),

  ];
}
