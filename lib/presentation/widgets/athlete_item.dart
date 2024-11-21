import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/screens/create_update_athlete_screen.dart';
import 'package:futbiostats/presentation/screens/information_athlete_screen%20.dart';
import 'package:futbiostats/presentation/utils/utils.dart';
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      athlete.imageData.isEmpty
                          ? const Text('No se ha cargado ninguna imagen.')
                          : Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.memory(Uint8List.fromList(athlete.imageData))),
                            ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Utils.formatCurrency(athlete.value),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold, color: colorScheme.onPrimaryContainer),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
