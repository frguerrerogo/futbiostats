import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/providers/athlete_provider.dart';
import 'package:futbiostats/presentation/widgets/custom_text_field.dart';
import 'package:futbiostats/presentation/widgets/date_picker_field.dart';
import 'package:futbiostats/presentation/widgets/icon_button_custom.dart';
import 'package:futbiostats/presentation/widgets/skilled_foot_selector.dart';
import 'package:futbiostats/presentation/widgets/skills_rating.dart';
import 'package:futbiostats/presentation/widgets/statistics_form.dart';
import 'package:futbiostats/presentation/widgets/statistics_widget.dart';
import 'package:futbiostats/presentation/widgets/text_list_widget.dart';

class CreateUpdateAthleteScreen extends ConsumerWidget {
  static const name = 'create-update-athlete-screen';
  final Athlete? athlete;

  CreateUpdateAthleteScreen({
    super.key,
    this.athlete,
  });

  final TextEditingController _nameController = TextEditingController();
  late DateTime _birthdate = DateTime.now();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  List<String> _trajectory = [];
  List<String> _positions = [];
  final TextEditingController _valueController = TextEditingController();
  List<Skill> _skills = [
    Skill.create(name: "Potencia de tiro", value: 0),
    Skill.create(name: "Definición", value: 0),
    Skill.create(name: "Juego aéreo", value: 0),
    Skill.create(name: "Movilidad", value: 0),
  ];
  late SkilledFoot _skilledFoot = SkilledFoot.left;
  List<String> _injuryRecord = [];
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
  final TextEditingController _informaScoutController = TextEditingController();
  List<String> _tournamentsPlayed = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final bool isCreate = athlete == null;

    if (!isCreate) {
      // String image;
      _nameController.text = athlete!.name;
      _birthdate = athlete!.birthdate;
      _nationalityController.text = athlete!.nationality;
      _heightController.text = athlete!.height.toString();
      _weightController.text = athlete!.weight.toString();
      _trajectory = athlete!.trajectory;
      _positions = athlete!.positions;
      _valueController.text = athlete!.value.toString();
      _skills = athlete!.skills;
      _skilledFoot = athlete!.skilledFoot;
      _injuryRecord = athlete!.injuryRecord;
      _statistics = athlete!.statistics;
      _informaScoutController.text = athlete!.informaScout;
      _tournamentsPlayed = athlete!.tournamentsPlayed;
    }

    return Scaffold(
      appBar: AppBar(
        title:
            isCreate ? _title(context, 'Agregar jugador', colorScheme) : _title(context, 'Editar jugador', colorScheme),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          if (!isCreate)
            IconButtonCustom(
                onTap: () {
                  ref.read(athleteProvider.notifier).deleteAthlete(athlete!.isarId!);
                },
                icon: Icons.delete_forever,
                background: true),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // String image;
            //name
            CustomTextField(
              controller: _nameController,
              hintText: 'Nombre',
              labelText: 'Nombre',
            ),
            //birthdate;
            DatePickerField(
              initialDate: _birthdate,
              hintText: 'Selecciona una fecha',
              labelText: 'Fecha nacimiento',
              onChanged: (value) => _birthdate = value,
            ),
            //nationality;
            CustomTextField(
              controller: _nationalityController,
              hintText: 'Nacionalidad',
              labelText: 'Nacionalidad',
            ),
            //height;
            CustomTextField(
              controller: _heightController,
              hintText: 'Altura (m)',
              labelText: 'Altura',
            ),
            //weight;
            CustomTextField(
              controller: _weightController,
              hintText: 'Peso (Kg)',
              labelText: 'Peso',
            ),
            //trajectory;
            TextListWidget(
              textList: _trajectory,
              title: 'Registro de trayectorias',
              hintText: 'Escribe la trayectoria',
              labelText: 'Escribe la trayectoria',
              buttonText: 'Agregar trayectoria',
              onChanged: (value) => _trajectory = value,
            ),
            //positions;
            TextListWidget(
              textList: _positions,
              title: 'Registro de posiciones',
              hintText: 'Escribe la posición',
              labelText: 'Escribe la posición',
              buttonText: 'Agregar posición',
              onChanged: (value) => _positions = value,
            ),
            //value;
            CustomTextField(
              controller: _valueController,
              hintText: 'Valor (€)',
              labelText: 'Valor',
            ),
            // skills;
            SkillsRating(
              skills: _skills,
            ),
            // SkilledFoot skilledFoot;
            SkilledFootSelector(
              onChanged: (value) => _skilledFoot = value,
              selectedFoot: _skilledFoot,
            ),
            // List<String> injuryRecord;
            TextListWidget(
              textList: _injuryRecord,
              title: 'Registro de lesiones',
              hintText: 'Escribe la lesión',
              labelText: 'Escribe la lesión',
              buttonText: 'Agregar lesión',
              onChanged: (value) => _injuryRecord = value,
            ),
            //statistics;
            StatisticsForm(
              onStatisticsChanged: (statistics) => _statistics = statistics,
              statistics: _statistics,
            ),
            //informaScout;
            CustomTextField(
              controller: _informaScoutController,
              hintText: 'Informe de exploración',
              labelText: 'Informe de exploración',
              maxLines: 3,
            ),
            //tournamentsPlayed;
            TextListWidget(
              textList: _tournamentsPlayed,
              title: 'Registro torneos disputados',
              hintText: 'Escribe torneo disputado',
              labelText: 'Escribe torneo disputado',
              buttonText: 'Agregar torneo disputado',
              onChanged: (value) => _tournamentsPlayed = value,
            ),
            _button(isCreate, context, ref, colorScheme),
          ],
        ),
      ),
    );
  }

  Text _title(BuildContext context, String title, ColorScheme colorScheme) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontWeight: FontWeight.bold, color: colorScheme.onPrimaryContainer),
    );
  }

  TextButton _button(bool isCreate, BuildContext context, WidgetRef ref, ColorScheme colorScheme) {
    return TextButton(
      onPressed: () {
        if (isCreate) {
          ref.read(athleteProvider.notifier).createAndUpdateAthlete(
                Athlete(
                  name: _nameController.text,
                  image: '',
                  birthdate: _birthdate,
                  nationality: _nationalityController.text,
                  height: _heightController.text.isNotEmpty ? double.parse(_heightController.text) : 0,
                  weight: _weightController.text.isNotEmpty ? int.parse(_weightController.text) : 0,
                  trajectory: _trajectory,
                  positions: _positions,
                  value: _valueController.text.isNotEmpty ? int.parse(_valueController.text) : 0,
                  skills: _skills,
                  skilledFoot: _skilledFoot,
                  injuryRecord: _injuryRecord,
                  statistics: _statistics,
                  informaScout: _informaScoutController.text,
                  tournamentsPlayed: _tournamentsPlayed,
                ),
              );
          Navigator.pop(context);
        } else {
          athlete!.name = _nameController.text;
          athlete!.image = '';
          athlete!.birthdate = _birthdate;
          athlete!.nationality = _nationalityController.text;
          athlete!.height = _heightController.text.isNotEmpty ? double.parse(_heightController.text) : 0;
          athlete!.weight = _weightController.text.isNotEmpty ? int.parse(_weightController.text) : 0;
          athlete!.trajectory = _trajectory;
          athlete!.positions = _positions;
          athlete!.value = _valueController.text.isNotEmpty ? int.parse(_valueController.text) : 0;
          athlete!.skills = _skills;
          athlete!.skilledFoot = _skilledFoot;
          athlete!.injuryRecord = _injuryRecord;
          athlete!.statistics = _statistics;
          athlete!.informaScout = _informaScoutController.text;
          athlete!.tournamentsPlayed = _tournamentsPlayed;
          ref.read(athleteProvider.notifier).createAndUpdateAthlete(athlete!);
          Navigator.pop(context);
        }
      },
      style: TextButton.styleFrom(
        backgroundColor: colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        isCreate ? 'Agregar' : 'Editar',
        style: TextStyle(color: colorScheme.onPrimary),
      ),
    );
  }
}
