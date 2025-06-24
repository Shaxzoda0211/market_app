import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';
class Wdot extends StatelessWidget {
  final Color color;
  const Wdot({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 12,
      height: 12,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
