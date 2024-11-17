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
  String name;
  String image;
  DateTime birthdate;
  String nationality;
  int height;
  int weight;
  List<String> trajectory;
  int value;
  List<String> skills;
  @enumerated
  SkilledFoot skilledFoot;
  List<String> injuryRecord;
  List<String> statistics;
  String informaScout;
  String tournamentsPlayed;

  Athlete({
    required this.name,
    required this.image,
    required this.birthdate,
    required this.nationality,
    required this.height,
    required this.weight,
    required this.trajectory,
    required this.value,
    required this.skills,
    required this.skilledFoot,
    required this.injuryRecord,
    required this.statistics,
    required this.informaScout,
    required this.tournamentsPlayed,
  });
}
