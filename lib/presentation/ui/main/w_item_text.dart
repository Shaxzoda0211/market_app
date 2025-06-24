import 'package:flutter/material.dart';

import '../resource/app_colors.dart';
class WItemText extends StatefulWidget {
  final String title;
  final String subtitle;
  const WItemText({super.key, required this.title,  required this.subtitle});

  @override
  State<WItemText> createState() => _WItemTextState();
}

class _WItemTextState extends State<WItemText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${widget.title} :",style: TextStyle(fontFamily:'MainFont' ,fontSize: 16,fontWeight: FontWeight.bold),),
        Text(widget.subtitle,style: TextStyle(fontFamily:'MainFont' ,fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.grey),),
      ],
    );
  }
}
