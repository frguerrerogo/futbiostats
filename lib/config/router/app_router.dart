import 'package:go_router/go_router.dart';
import 'package:futbiostats/presentation/screens/athletes_main_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/athletesMainScreen',
  routes: [
    GoRoute(
      path: '/athletesMainScreen',
      name: AthletesMainScreen.name,
      builder: (context, state) {
        return const AthletesMainScreen();
      },
      routes: [],
    ),
  ],
);
