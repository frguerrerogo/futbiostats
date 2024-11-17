import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/providers/athlete_provider.dart';
import 'package:futbiostats/presentation/widgets/add_athlete_dialog.dart';
import 'package:futbiostats/presentation/widgets/icon_button_custom.dart';

class AthleteItem extends ConsumerStatefulWidget {
  const AthleteItem({
    super.key,
    required this.athlete,
  });

  final Athlete athlete;

  @override
  AthleteItemState createState() => AthleteItemState();
}

class AthleteItemState extends ConsumerState<AthleteItem> with AutomaticKeepAliveClientMixin {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: colorScheme.onPrimaryContainer,
            width: 1.0,
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedSize(
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          widget.athlete.name,
                          maxLines: _isExpanded ? 2 : 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold, color: colorScheme.onPrimaryContainer),
                        ),
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 500),
                        child: _isExpanded
                            ? Text(
                                widget.athlete.name,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.normal, color: colorScheme.onPrimaryContainer),
                              )
                            : const SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (_isExpanded) const SizedBox(height: 5),
            AnimatedSize(
              duration: const Duration(milliseconds: 500),
              child: _isExpanded
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButtonCustom(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CreateAndUpdateAthlete(
                                    athlete: widget.athlete,
                                  );
                                },
                              );
                            },
                            icon: Icons.edit,
                            background: true),
                        const SizedBox(width: 10),
                        IconButtonCustom(
                            onTap: () {
                              ref.read(athleteProvider.notifier).deleteAthlete(widget.athlete.isarId!);
                            },
                            icon: Icons.delete_forever,
                            background: true),
                      ],
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
