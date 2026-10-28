import 'package:english_exam_prep/features/main/presentation/screens/main_screen.dart';
import 'package:english_exam_prep/features/practice/presentation/screens/practice_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/profile/presentation/screens/profile_screen.dart';

final router = GoRouter(
  initialLocation: '/practice',
  routes: [
    // BottomNavigationBar
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MainScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/practice',
              builder: (context, state) => const PracticeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
