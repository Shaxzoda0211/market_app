import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resource/app_colors.dart';
import '../resource/app_icons.dart';
class WItemDrawer extends StatelessWidget {
  final String title;
  final String icon;
  const WItemDrawer({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
      title: Text(title,style: TextStyle(color: AppColors.black,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'MainFont'),),
      onTap: (){
        Navigator.of(context).pop();
      },
    );
  }
}
