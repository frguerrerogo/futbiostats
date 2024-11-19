import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futbiostats/config/constants/assets/icon.dart';
import 'package:futbiostats/domain/entities/athlete.dart';

class SkilledFootSelector extends StatefulWidget {
  final SkilledFoot selectedFoot;
  final ValueChanged<SkilledFoot> onChanged;

  const SkilledFootSelector({
    Key? key,
    required this.selectedFoot,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SkilledFootSelector> createState() => _SkilledFootSelectorState();
}

class _SkilledFootSelectorState extends State<SkilledFootSelector> {
  SkilledFoot? _currentFoot;

  @override
  void initState() {
    super.initState();
    _currentFoot = widget.selectedFoot;
  }

  void _onFootSelected(SkilledFoot foot) {
    setState(() {
      _currentFoot = foot;
    });
    widget.onChanged(foot);
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
      child: Column(
        children: [
          const Text(
            "Pie hábil",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(flex: 1, child: _buildFootButton(SkilledFoot.right, 'Izquierdo', AssetsIcon.leftFoot)),
              const SizedBox(width: 8),
              Flexible(flex: 1, child: _buildFootButton(SkilledFoot.left, 'Derecho', AssetsIcon.rightFoot)),
            ],
          ),
          const SizedBox(width: 8),
          _buildFootButton(SkilledFoot.both, 'Ambos', AssetsIcon.leftFoot, svgAssetPathExtra: AssetsIcon.rightFoot),
        ],
      ),
    );
  }

  Widget _buildFootButton(SkilledFoot foot, String label, String svgAssetPath, {String? svgAssetPathExtra}) {
    final isSelected = _currentFoot == foot;
    final colorScheme = Theme.of(context).colorScheme;
    return ElevatedButton(
      onPressed: () => _onFootSelected(foot),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? colorScheme.onPrimaryContainer : colorScheme.secondaryContainer,
        foregroundColor: isSelected ? colorScheme.onPrimary : colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgAssetPath,
            height: 24,
            width: 24,
            color: isSelected ? colorScheme.onPrimary : colorScheme.secondary,
          ),
          if (svgAssetPathExtra != null)
            SvgPicture.asset(
              svgAssetPathExtra,
              height: 24,
              width: 24,
              color: isSelected ? colorScheme.onPrimary : colorScheme.secondary,
            ),
          const SizedBox(width: 4),
          Text(label),
        ],
      ),
    );
  }
}
