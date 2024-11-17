import 'package:futbiostats/domain/entities/athlete.dart';

abstract class LocalStorageDatasource {
  Future<Athlete> createAndUpdateAthlete(Athlete athlete);
  Future<bool> deleteAthlete(int athleteId);
  Future<List<Athlete>> loadAthlete();
}
