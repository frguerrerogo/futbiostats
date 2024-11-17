//import 'package:isar/isar.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:futbiostats/domain/datasources/local_storage_datasource.dart';
import 'package:futbiostats/domain/entities/athlete.dart';

class IsarDataSource extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarDataSource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationCacheDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [AthleteSchema],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<Athlete> createAndUpdateAthlete(Athlete athlete) async {
    final isar = await db;
    final athleteId = isar.writeTxnSync(() => isar.athletes.putSync(athlete));
    final athletes = isar.athletes;

    final athleteNew = await athletes.get(athleteId);
    return athleteNew!;
  }

  @override
  Future<bool> deleteAthlete(int athleteId) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.athletes.deleteSync(athleteId));
    return true;
  }

  @override
  Future<List<Athlete>> loadAthlete() async {
    final isar = await db;
    return isar.athletes.where().findAll();
  }
}
