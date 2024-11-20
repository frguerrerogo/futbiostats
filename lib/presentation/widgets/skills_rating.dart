import 'package:flutter/material.dart';
import 'package:futbiostats/domain/entities/athlete.dart';

class SkillsRating extends StatefulWidget {
  final List<Skill> skills;
  final bool view;
  const SkillsRating({
    super.key,
    required this.skills,
    this.view = false,
  });

  @override
  _SkillsRatingState createState() => _SkillsRatingState();
}

class _SkillsRatingState extends State<SkillsRating> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return widget.view
        ? Column(
            children: [
              ...widget.skills.map((skill) => _buildSkillRow(skill)),
            ],
          )
        : Container(
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
                ...widget.skills.map((skill) => _buildSkillRow(skill)),
              ],
            ),
          );
  }

  Widget _buildSkillRow(Skill skill) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '${skill.name}:',
              style: TextStyle(
                  fontSize: widget.view ? 16 : 14, fontWeight: widget.view ? FontWeight.bold : FontWeight.normal),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: widget.view
                    ? null
                    : () {
                        setState(() {
                          skill.value = index + 1;
                        });
                      },
                child: Icon(
                  Icons.star_rounded,
                  color: index < skill.value ? Colors.amber : Colors.grey,
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
