import 'package:flutter/material.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/screens/create_update_athlete_screen.dart';
import 'package:futbiostats/presentation/screens/information_athlete_screen%20.dart';
import 'package:futbiostats/presentation/widgets/icon_button_custom.dart';
import 'package:go_router/go_router.dart';

class AthleteItem extends StatelessWidget {
  final Athlete athlete;
  const AthleteItem({
    super.key,
    required this.athlete,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).goNamed(InformationAthleteScreen.name, extra: athlete);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: colorScheme.onPrimaryContainer,
            width: 1.0,
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        athlete.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold, color: colorScheme.onPrimaryContainer),
                      ),
                      Text(
                        athlete.nationality,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.normal, color: colorScheme.onPrimaryContainer),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButtonCustom(
                    onTap: () {
                      GoRouter.of(context).goNamed(CreateUpdateAthleteScreen.name, extra: athlete);
                    },
                    icon: Icons.edit,
                    background: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
