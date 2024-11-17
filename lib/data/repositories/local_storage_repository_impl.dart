import 'package:futbiostats/domain/datasources/local_storage_datasource.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl(this.datasource);

  @override
  Future<List<Athlete>> loadAthletes() {
    return datasource.loadAthlete();
  }

  @override
  Future<Athlete> createAndUpdateAthlete(Athlete athlete) {
    return datasource.createAndUpdateAthlete(athlete);
  }

  @override
  Future<bool> deleteAthlete(int athleteId) {
    return datasource.deleteAthlete(athleteId);
  }
}
