import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';
import '../../../resource/app_icons.dart';
class WOutlineBtn extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;
  const WOutlineBtn({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18),
      decoration: BoxDecoration(border: Border.all(color: AppColors.black,width: 1
      ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon,width: 30),
          SizedBox(width: 12),
          Text(text,style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 16),)
        ],
      ),
    );
  }
}
