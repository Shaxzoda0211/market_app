import 'package:flutter/material.dart';

import '../resource/app_colors.dart';
class WItemColor extends StatefulWidget {
  final Color color;
  final int index;
  final Function(int index) onTap;
  final bool isSelected;
  const WItemColor({super.key, required this.color, required this.index, required this.onTap, required this.isSelected});

  @override
  State<WItemColor> createState() => _WItemColorState();
}

class _WItemColorState extends State<WItemColor> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTap(widget.index);
      },
      child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:Border.all(color: widget.isSelected ? widget.color:Colors.transparent)
            ),
            child: Container(
              margin: EdgeInsets.only(right: 12,left: 12),
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: widget.color,
                shape: BoxShape.circle,
              ),
            ),
          ),
    );
  }
}
