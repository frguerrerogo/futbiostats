import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/providers/athlete_provider.dart';

class CreateAndUpdateAthlete extends ConsumerWidget {
  final Athlete? athlete;

  CreateAndUpdateAthlete({super.key, this.athlete});

  final TextEditingController _titleController = TextEditingController();
  //final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final bool isCreate = athlete == null;

    if (!isCreate) {
      _titleController.text = athlete!.name;
      //_descriptionController.text = athlete!.description;
    }

    return AlertDialog(
      title: isCreate ? Text('Agregar Tarea') : Text('Editar Tarea'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              hintText: 'Título',
              labelText: 'Título',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: colorScheme.onPrimaryContainer, width: 2),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // TextField(
          //   controller: _descriptionController,
          //   maxLines: 2,
          //   decoration: InputDecoration(
          //     hintText: 'Descripción',
          //     labelText: 'Descripción',
          //     floatingLabelBehavior: FloatingLabelBehavior.always,
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10),
          //       borderSide: BorderSide(color: colorScheme.onPrimaryContainer, width: 2),
          //     ),
          //   ),
          // ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            String title = _titleController.text;
            //String description = _descriptionController.text;
            if (isCreate) {
              // ref.read(athleteProvider.notifier).createAndUpdateAthlete(
              //       Athlete(
              //         name: title,
              //         description: description,
              //       ),
              //     );
              Navigator.pop(context);
            } else {
              athlete!.name = title;
              //athlete!.description = description;
              ref.read(athleteProvider.notifier).createAndUpdateAthlete(athlete!);
              Navigator.pop(context);
            }
          },
          child: isCreate ? Text('Agregar') : Text('Editar'),
        ),
      ],
    );
  }
}
