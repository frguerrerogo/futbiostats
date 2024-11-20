import 'package:flutter/material.dart';
import 'package:futbiostats/domain/entities/athlete.dart';

class StatisticsWidget extends StatelessWidget {
  final Statistics stats;

  const StatisticsWidget({Key? key, required this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Card(
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
            _buildStatRow('PJ:', stats.matchesPlayed.toString()),
            _buildStatRow('Min:', stats.minutesPlayed.toString()),
            _buildStatRow('Gol:', stats.goals.toString()),
            _buildStatRow('Asist:', stats.assists.toString()),
            _buildStatRow('Min *(G/A):', stats.minutesPerGoalAssist.toString()),
            _buildStatRow('Remates a portería:', stats.shotsOnTarget.toString()),
            _buildStatRow('Pases:', stats.passes.toString()),
            _buildStatRow('% Pases:', '${stats.passAccuracy}%'),
            _buildStatRow('Duelos:', stats.duels.toString()),
            _buildStatRow('% Duelos:', '${stats.duelsWonPercentage}%'),
            _buildStatRow('Faltas Com.:', stats.foulsCommitted.toString()),
            _buildStatRow('Faltas Rec.:', stats.foulsReceived.toString()),
            _buildStatRow('% Regates:', '${stats.dribbleSuccessPercentage}%'),
            _buildCardRow(stats.yellowCards, stats.redCards),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildCardRow(int yellowCards, int redCards) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Tarjetas:', style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 8),
        Row(
          children: [
            _buildCardIcon(Colors.yellow, yellowCards),
            const SizedBox(width: 8),
            _buildCardIcon(Colors.red, redCards),
          ],
        ),
      ],
    );
  }

  Widget _buildCardIcon(Color color, int count) {
    return Row(
      children: [
        Icon(Icons.rectangle, color: color, size: 16),
        const SizedBox(width: 4),
        Text(count.toString()),
      ],
    );
  }
}
