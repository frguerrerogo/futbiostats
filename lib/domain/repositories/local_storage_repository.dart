import 'package:futbiostats/domain/entities/athlete.dart';

abstract class LocalStorageRepository {
  Future<Athlete> createAndUpdateAthlete(Athlete athlete);
  Future<bool> deleteAthlete(int athleteId);
  Future<List<Athlete>> loadAthletes();
}
