import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final Color color;
  final double? value;

  const LoadingIndicator({
    Key? key,
    this.size = 30,
    this.strokeWidth = 3,
    this.color = Colors.black,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation(color),
      ),
    );
  }
}
