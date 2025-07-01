import 'package:flutter/material.dart';

import '../ui/resource/app_colors.dart';
class WBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const WBtn({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: AppColors.primary
        ),
        child: Text(text, style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold,fontFamily: "MainFont"),),
      ),
    );
  }
}
