import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/config/theme/app_theme.dart';
import 'package:futbiostats/presentation/providers/theme/theme_provider.dart';

class DrawerCustom extends ConsumerWidget {
  const DrawerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(themeNotifierProvider).isDarkmode;
    final selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final height = MediaQuery.of(context).size.height;

    return Drawer(
      backgroundColor: colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: colorScheme.onPrimaryContainer, shape: BoxShape.circle),
              child: IconButton(
                  icon: Icon(
                    isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
                    color: colorScheme.primaryContainer,
                  ),
                  onPressed: () {
                    ref.read(themeNotifierProvider.notifier).toggleDarkmode();
                  }),
            ),
            Divider(
              color: colorScheme.onPrimaryContainer,
              height: 20,
            ),
            SizedBox(
              height: height * 0.85,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: colorList.map(
                  (color) {
                    return GestureDetector(
                      onTap: () => ref.read(themeNotifierProvider.notifier).changeColorIndex(color),
                      child: Container(
                        decoration: BoxDecoration(
                          color: color,
                          border: selectedColor == color
                              ? Border.all(
                                  color: Colors.white,
                                  width: 3.0,
                                )
                              : null,
                        ),
                        child: selectedColor == color
                            ? const Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              )
                            : null,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
