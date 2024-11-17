import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/domain/repositories/local_storage_repository.dart';
import 'package:futbiostats/presentation/providers/storage/local_storage_provider.dart';

final athleteProvider = StateNotifierProvider<StorageAthleteNotifier, List<Athlete>>((ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageAthleteNotifier(localStorageRepository: localStorageRepository);
});

class StorageAthleteNotifier extends StateNotifier<List<Athlete>> {
  final LocalStorageRepository localStorageRepository;

  StorageAthleteNotifier({required this.localStorageRepository}) : super([]);

  void loadAthletes() async {
    final athletes = await localStorageRepository.loadAthletes();
    state = [...state, ...athletes];
  }

  void createAndUpdateAthlete(Athlete athlete) async {
    if (athlete.isarId == null) {
      final response = await localStorageRepository.createAndUpdateAthlete(athlete);
      state.add(response);

      state = [...state];
    } else {
      final isarId = athlete.isarId!;
      final response = await localStorageRepository.createAndUpdateAthlete(athlete);
      int indexToRemove = state.indexWhere((athlete) => athlete.isarId == isarId);
      state.removeAt(indexToRemove);
      state.insert(indexToRemove, response);

      state = [...state];
    }
  }

  void deleteAthlete(int athleteId) async {
    final response = await localStorageRepository.deleteAthlete(athleteId);
    if (response) {
      int indexToRemove = state.indexWhere((athlete) => athlete.isarId == athleteId);
      state.removeAt(indexToRemove);

      state = [...state];
    }
  }
}
