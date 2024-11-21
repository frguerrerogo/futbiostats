import 'package:flutter/material.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/widgets/custom_text_field.dart';

class StatisticsForm extends StatefulWidget {
  final Function(Statistics) onStatisticsChanged;
  final Statistics statistics;

  const StatisticsForm({
    Key? key,
    required this.onStatisticsChanged,
    required this.statistics,
  }) : super(key: key);
  @override
  _StatisticsFormState createState() => _StatisticsFormState();
}

class _StatisticsFormState extends State<StatisticsForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController matchesController = TextEditingController();
  final TextEditingController minutesController = TextEditingController();
  final TextEditingController goalsController = TextEditingController();
  final TextEditingController assistsController = TextEditingController();
  final TextEditingController shotsController = TextEditingController();
  final TextEditingController passesController = TextEditingController();
  final TextEditingController passAccuracyController = TextEditingController();
  final TextEditingController duelsController = TextEditingController();
  final TextEditingController duelsWonController = TextEditingController();
  final TextEditingController foulsCommittedController = TextEditingController();
  final TextEditingController foulsReceivedController = TextEditingController();
  final TextEditingController dribblesController = TextEditingController();
  final TextEditingController yellowCardsController = TextEditingController();
  final TextEditingController redCardsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initStatistics();
    _addListeners();
  }

  void _initStatistics() {
    matchesController.text = widget.statistics.matchesPlayed.toString();
    minutesController.text = widget.statistics.minutesPlayed.toString();
    goalsController.text = widget.statistics.goals.toString();
    assistsController.text = widget.statistics.assists.toString();
    shotsController.text = widget.statistics.shotsOnTarget.toString();
    passesController.text = widget.statistics.passes.toString();
    passAccuracyController.text = widget.statistics.passAccuracy.toString();
    duelsController.text = widget.statistics.duels.toString();
    duelsWonController.text = widget.statistics.duelsWonPercentage.toString();
    foulsCommittedController.text = widget.statistics.foulsCommitted.toString();
    foulsReceivedController.text = widget.statistics.foulsReceived.toString();
    dribblesController.text = widget.statistics.dribbleSuccessPercentage.toString();
    yellowCardsController.text = widget.statistics.yellowCards.toString();
    redCardsController.text = widget.statistics.redCards.toString();
  }

  void _addListeners() {
    matchesController.addListener(_updateStatistics);
    minutesController.addListener(_updateStatistics);
    goalsController.addListener(_updateStatistics);
    assistsController.addListener(_updateStatistics);
    shotsController.addListener(_updateStatistics);
    passesController.addListener(_updateStatistics);
    passAccuracyController.addListener(_updateStatistics);
    duelsController.addListener(_updateStatistics);
    duelsWonController.addListener(_updateStatistics);
    foulsCommittedController.addListener(_updateStatistics);
    foulsReceivedController.addListener(_updateStatistics);
    dribblesController.addListener(_updateStatistics);
    yellowCardsController.addListener(_updateStatistics);
    redCardsController.addListener(_updateStatistics);
  }

  void _updateStatistics() {
    try {
      final statistics = Statistics.create(
        matchesPlayed: int.tryParse(matchesController.text) ?? 0,
        minutesPlayed: int.tryParse(minutesController.text) ?? 0,
        goals: int.tryParse(goalsController.text) ?? 0,
        assists: int.tryParse(assistsController.text) ?? 0,
        minutesPerGoalAssist: (int.tryParse(minutesController.text) ?? 0) *
            ((int.tryParse(goalsController.text) ?? 0) /
                (int.tryParse(assistsController.text) == 0 ? 1 : int.tryParse(assistsController.text)!)),
        shotsOnTarget: int.tryParse(shotsController.text) ?? 0,
        passes: int.tryParse(passesController.text) ?? 0,
        passAccuracy: int.tryParse(passAccuracyController.text) ?? 0,
        duels: int.tryParse(duelsController.text) ?? 0,
        duelsWonPercentage: int.tryParse(duelsWonController.text) ?? 0,
        foulsCommitted: int.tryParse(foulsCommittedController.text) ?? 0,
        foulsReceived: int.tryParse(foulsReceivedController.text) ?? 0,
        dribbleSuccessPercentage: int.tryParse(dribblesController.text) ?? 0,
        yellowCards: int.tryParse(yellowCardsController.text) ?? 0,
        redCards: int.tryParse(redCardsController.text) ?? 0,
      );

      widget.onStatisticsChanged(statistics);
    } catch (e) {
      debugPrint('Error al actualizar estadísticas: $e');
    }
  }

  @override
  void dispose() {
    matchesController.dispose();
    minutesController.dispose();
    goalsController.dispose();
    assistsController.dispose();
    shotsController.dispose();
    passesController.dispose();
    passAccuracyController.dispose();
    duelsController.dispose();
    duelsWonController.dispose();
    foulsCommittedController.dispose();
    foulsReceivedController.dispose();
    dribblesController.dispose();
    yellowCardsController.dispose();
    redCardsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colorScheme.onPrimaryContainer,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text(
              "Estadísticas",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Campo de Partidos Jugados
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: matchesController,
              labelText: 'Partidos Jugados (PJ)',
              hintText: 'Partidos Jugados (PJ)',
            ),
            // Campo de Minutos
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: minutesController,
              labelText: 'Minutos Jugados (Min)',
              hintText: 'Minutos Jugados (Min)',
            ),
            // Campo de Goles
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: goalsController,
              labelText: 'Goles (Gol)',
              hintText: 'Goles (Gol)',
            ),
            // Campo de Asistencias
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: assistsController,
              labelText: 'Asistencias (Asist)',
              hintText: 'Asistencias (Asist)',
            ),
            // Campo de Remates
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: shotsController,
              labelText: 'Remates a Portería',
              hintText: 'Remates a Portería',
            ),
            // Campo de Pases
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: passesController,
              labelText: 'Pases',
              hintText: 'Pases',
            ),
            // Campo de Precisión de Pases
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: passAccuracyController,
              labelText: 'Precisión de Pases (%)',
              hintText: 'Precisión de Pases (%)',
            ),
            // Campo de Duelos
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: duelsController,
              labelText: 'Duelos',
              hintText: 'Duelos',
            ),
            // Campo de Duelos Ganados
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: duelsWonController,
              labelText: 'Porcentaje Duelos Ganados (%)',
              hintText: 'Porcentaje Duelos Ganados (%)',
            ),
            // Campo de Faltas Cometidas
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: foulsCommittedController,
              labelText: 'Faltas Cometidas',
              hintText: 'Faltas Cometidas',
            ),
            // Campo de Faltas Recibidas
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: foulsReceivedController,
              labelText: 'Faltas Recibidas',
              hintText: 'Faltas Recibidas',
            ),
            // Campo de Regates
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: dribblesController,
              labelText: 'Porcentaje de Regates (%)',
              hintText: 'Porcentaje de Regates (%)',
            ),
            // Campo de Tarjetas Amarillas
            CustomTextField(
              keyboardType: TextInputType.number,
              controller: yellowCardsController,
              labelText: 'Tarjetas Amarillas',
              hintText: 'Tarjetas Amarillas',
            ),
            // Campo de Tarjetas Rojas
            CustomTextField(
              controller: redCardsController,
              labelText: 'Tarjetas Rojas',
              hintText: 'Tarjetas Rojas',
            ),
          ],
        ),
      ),
    );
  }
}
