import "package:flutter/material.dart";

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
        child: const CenterWrap("Hello World"));
  }
}

class CenterWrap extends StatelessWidget {
  const CenterWrap(this.text, {super.key});
  final String text;
  void rollDice() {
    //...
  }

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
        TextButton(onPressed: rollDice, child: const Text("Roll Dice"))
      ],
    ));
  }
}
