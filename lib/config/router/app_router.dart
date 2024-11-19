import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/screens/create_update_athlete_screen.dart';
import 'package:futbiostats/presentation/screens/information_athlete_screen%20.dart';
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
      routes: [
        GoRoute(
          path: '/athletesMainScreen/createUpdateAthleteScreen',
          name: CreateUpdateAthleteScreen.name,
          builder: (context, state) {
            final athlete = state.extra as Athlete?;
            return CreateUpdateAthleteScreen(
              athlete: athlete,
            );
          },
        ),
        GoRoute(
          path: '/athletesMainScreen/informationAthleteScreen',
          name: InformationAthleteScreen.name,
          builder: (context, state) {
            final athlete = state.extra as Athlete;
            return InformationAthleteScreen(
              athlete: athlete,
            );
          },
        ),
      ],
    ),
  ],
);
