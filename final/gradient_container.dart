import "package:flutter/material.dart";

import "dice_roller.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const CenterWrap("Hello World"),
    );
  }
}

class CenterWrap extends StatelessWidget {
  const CenterWrap(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return const Center(child: DiceRoller());
  }
}
