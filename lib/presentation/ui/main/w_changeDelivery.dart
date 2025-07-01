import 'package:flutter/material.dart';

import '../resource/app_colors.dart';
class WChangedelivery extends StatefulWidget {
  final String title;
  final String subtitle;
  final String phoneNumber;
  const WChangedelivery({super.key, required this.title, required this.subtitle, required this.phoneNumber});

  @override
  State<WChangedelivery> createState() => _WChangedeliveryState();
}

class _WChangedeliveryState extends State<WChangedelivery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey, width: 2),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: "MainFont",
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.center,
            widget.subtitle,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontFamily: "MainFont",
            ),
          ),
          SizedBox(height: 10),
          if (widget.phoneNumber.isNotEmpty)
            Text(
              widget.phoneNumber,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 17,
                fontFamily: "MainFont",
              ),
            ),
        ],
      ),
    );
  }
}
