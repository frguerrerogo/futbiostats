import 'package:flutter/material.dart';
import 'package:futbiostats/domain/entities/athlete.dart';

class SkillsRating extends StatefulWidget {
  final List<Skill> skills;
  const SkillsRating({
    super.key,
    required this.skills,
  });

  @override
  _SkillsRatingState createState() => _SkillsRatingState();
}

class _SkillsRatingState extends State<SkillsRating> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Habilidades",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...widget.skills.map((skill) => _buildSkillRow(skill)).toList(),
        ],
      ),
    );
  }

  Widget _buildSkillRow(Skill skill) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              skill.name,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    skill.value = index + 1;
                  });
                },
                child: Icon(
                  Icons.star_rounded,
                  color: index < skill.value ? colorScheme.onPrimaryContainer : Colors.grey,
                  size: 30.0,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
