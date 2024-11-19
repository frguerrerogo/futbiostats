import 'package:isar/isar.dart';
part 'athlete.g.dart';

enum SkilledFoot {
  right,
  left,
  both,
}

@collection
class Athlete {
  Id? isarId;

  late String name;
  late String image;
  late DateTime birthdate;
  late String nationality;
  late double height;
  late int weight;
  List<String> trajectory = []; // Lista inicializada
  List<String> positions = []; // Lista inicializada
  late int value;
  List<Skill> skills = []; // Lista inicializada
  @enumerated
  late SkilledFoot skilledFoot;
  List<String> injuryRecord = []; // Lista inicializada
  late Statistics statistics; // Lista inicializada
  late String informaScout;
  late String tournamentsPlayed;

  Athlete({
    required this.name,
    required this.image,
    required this.birthdate,
    required this.nationality,
    required this.height,
    required this.weight,
    required this.trajectory,
    required this.positions,
    required this.value,
    required this.skills,
    required this.skilledFoot,
    required this.injuryRecord,
    required this.statistics,
    required this.informaScout,
    required this.tournamentsPlayed,
  });

  // Constructor vacío requerido por Isar
  Athlete.empty();
}

@embedded
class Skill {
  late String name;
  late int value;

  Skill(); // Constructor vacío requerido por Isar

  // Constructor adicional para uso manual
  Skill.create({
    required this.name,
    required this.value,
  });
}

@embedded
class Statistics {
  late int matchesPlayed;
  late int minutesPlayed;
  late int goals;
  late int assists;
  late double minutesPerGoalAssist;
  late int shotsOnTarget;
  late int passes;
  late int passAccuracy;
  late int duels;
  late int duelsWonPercentage;
  late int foulsCommitted;
  late int yellowCards;
  late int redCards;
  late int foulsReceived;
  late int dribbleSuccessPercentage;

  Statistics();

  Statistics.create({
    required this.matchesPlayed,
    required this.minutesPlayed,
    required this.goals,
    required this.assists,
    required this.minutesPerGoalAssist,
    required this.shotsOnTarget,
    required this.passes,
    required this.passAccuracy,
    required this.duels,
    required this.duelsWonPercentage,
    required this.foulsCommitted,
    required this.yellowCards,
    required this.redCards,
    required this.foulsReceived,
    required this.dribbleSuccessPercentage,
  });
}
