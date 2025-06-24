import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resource/app_icons.dart';
class WItemComfort extends StatefulWidget {
  final String title;
  final String icon;
  const WItemComfort({super.key, required this.title, required this.icon});

  @override
  State<WItemComfort> createState() => _WItemComfortState();
}

class _WItemComfortState extends State<WItemComfort> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SvgPicture.asset(widget.icon),
        Text(widget.title,style: TextStyle(fontFamily:'MainFont' ,fontSize: 16,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
