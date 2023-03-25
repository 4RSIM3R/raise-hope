import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class RoundedLinearProgressBar extends StatelessWidget {
  final double max;
  final double value;
  final Color color;
  final Color bgColor;

  const RoundedLinearProgressBar({
    Key? key,
    this.max = 1,
    this.value = 0,
    this.color = Colors.blue,
    this.bgColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (value / max) * x;

        return Stack(
          children: [
            Container(
              width: x,
              height: 5,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: 500.milliseconds,
              width: percent,
              height: 5,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
