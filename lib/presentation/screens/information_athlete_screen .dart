import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/widgets/statistics_widget.dart';

class InformationAthleteScreen extends ConsumerWidget {
  static const name = 'information-athlete-screen ';
  final Athlete athlete;

  InformationAthleteScreen({
    super.key,
    required this.athlete,
  });

  Statistics _statistics = Statistics.create(
    matchesPlayed: 0,
    minutesPlayed: 0,
    goals: 0,
    assists: 0,
    minutesPerGoalAssist: 0.0,
    shotsOnTarget: 0,
    passes: 0,
    passAccuracy: 0,
    duels: 0,
    duelsWonPercentage: 0,
    foulsCommitted: 0,
    yellowCards: 0,
    redCards: 0,
    foulsReceived: 0,
    dribbleSuccessPercentage: 0,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    _statistics = athlete.statistics;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // String image;
            //name

            //birthdate;

            //nationality;

            //height;

            //weight;

            //trajectory;

            //positions;

            //value;

            // skills;

            // skilledFoot;

            // List<String> injuryRecord;

            //statistics;

            StatisticsWidget(stats: _statistics),
            //informaScout;

            //tournamentsPlayed;
          ],
        ),
      ),
    );
  }

  Text _title(BuildContext context, String title, ColorScheme colorScheme) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontWeight: FontWeight.bold, color: colorScheme.onPrimaryContainer),
    );
  }
}
