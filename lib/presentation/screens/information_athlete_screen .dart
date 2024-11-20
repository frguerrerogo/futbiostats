import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futbiostats/config/constants/assets/icon.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/widgets/skills_rating.dart';
import 'package:futbiostats/presentation/widgets/statistics_widget.dart';
import 'package:intl/intl.dart';

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

    // Método para calcular la edad a partir de la fecha de nacimiento
    int calculateAge(DateTime birthdate) {
      final now = DateTime.now();
      int age = now.year - birthdate.year;
      if (now.month < birthdate.month || (now.month == birthdate.month && now.day < birthdate.day)) {
        age--;
      }
      return age;
    }

    // Método para formatear números con el símbolo de euros
    String formatCurrency(int value) {
      final format = NumberFormat.currency(
        locale: 'es_ES', // Configuración regional para el formato europeo
        symbol: '€', // Símbolo de euros
        decimalDigits: 0, // Sin decimales
      );
      return format.format(value);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          athlete.name,
          style: TextStyle(color: colorScheme.onPrimary),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: colorScheme.onPrimaryContainer,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // String image;
              // Image and basic info
              // Center(
              //   child: Column(
              //     children: [
              //       CircleAvatar(
              //         radius: 60,
              //         backgroundImage: NetworkImage(athlete.image),
              //       ),
              //       const SizedBox(height: 10),
              //       Text(
              //         athlete.name,
              //         style: Theme.of(context).textTheme.headline5?.copyWith(
              //               fontWeight: FontWeight.bold,
              //             ),
              //       ),
              //       Text(
              //         athlete.nationality,
              //         style: TextStyle(
              //           color: Colors.grey.shade600,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 20),
              //name
              // Player stats
              Card(
                color: colorScheme.primaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //birthdate;
                      _infoRow("Nacimiento:", DateFormat.yMMMMd().format(athlete.birthdate)),
                      _infoRow("Edad:", "${calculateAge(athlete.birthdate)} años"),
                      //nationality;
                      _infoRow("Nacionalidad:", athlete.nationality),
                      //height;
                      _infoRow("Altura:", "${athlete.height.toStringAsFixed(2)} m"),
                      //weight;
                      _infoRow("Peso:", "${athlete.weight} kg"),
                      //value;
                      _infoRow("Valor:", formatCurrency(athlete.value)),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),
              //SkilledFoot Positions;
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Piel hábil',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AssetsIcon.leftFoot,
                                height: 50,
                                width: 50,
                                color:
                                    (athlete.skilledFoot == SkilledFoot.both || athlete.skilledFoot == SkilledFoot.left)
                                        ? colorScheme.onPrimaryContainer
                                        : colorScheme.onPrimary,
                              ),
                              SvgPicture.asset(
                                AssetsIcon.rightFoot,
                                height: 50,
                                width: 50,
                                color: (athlete.skilledFoot == SkilledFoot.both ||
                                        athlete.skilledFoot == SkilledFoot.right)
                                    ? colorScheme.onPrimaryContainer
                                    : colorScheme.onPrimary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text(
                            'Posiciones',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Center(
                            child: Wrap(
                              spacing: 8,
                              children: athlete.positions
                                  .map(
                                    (position) => Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: colorScheme.onPrimary,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            blurRadius: 8,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                        border: Border.all(
                                          color: colorScheme.onPrimaryContainer,
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          position,
                                          style: const TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Skills
              if (athlete.skills.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _sectionTitle("Habilidades", Icons.star_rounded, colorScheme),
                      SkillsRating(
                        skills: athlete.skills,
                        view: true,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),

              // Trajectory
              if (athlete.trajectory.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _sectionTitle("Trayectoria", Icons.timeline, colorScheme),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: athlete.trajectory
                              .map((trajectory) => itemInfo(colorScheme, trajectory, Icons.sports_soccer))
                              .toList(),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),

              // Injury Record
              if (athlete.injuryRecord.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _sectionTitle("Registro de lesiones recientes", Icons.healing, colorScheme),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: athlete.injuryRecord
                              .map((injuryRecord) =>
                                  itemInfo(colorScheme, injuryRecord, Icons.health_and_safety_outlined))
                              .toList(),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              //Statistics;
              StatisticsWidget(stats: _statistics),
              // TournamentsPlayed
              if (athlete.tournamentsPlayed.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _sectionTitle("Torneos disputados", Icons.emoji_events, colorScheme),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: athlete.tournamentsPlayed
                              .map((tournamentsPlayed) => itemInfo(colorScheme, tournamentsPlayed, Icons.emoji_events))
                              .toList(),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              // InformaScout
              if (athlete.tournamentsPlayed.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _sectionTitle("Información Scout", Icons.info, colorScheme),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          athlete.informaScout,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Row itemInfo(ColorScheme colorScheme, String text, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          color: colorScheme.primary,
          size: 15,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  // Helper widget to display info row
  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  // Helper widget to display section title
  Widget _sectionTitle(String title, IconData icon, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: colorScheme.primary),
          const SizedBox(width: 5),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
