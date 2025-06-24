import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resource/app_colors.dart';
import '../resource/app_icons.dart';
class WItemShop extends StatelessWidget {
  final String title;
  final String icon;
  const WItemShop({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.grey.withOpacity(0.5),
                  width: 2,
                )
            ),
            child: SvgPicture.asset(icon),
          ),
          Text(title, style: TextStyle(color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
