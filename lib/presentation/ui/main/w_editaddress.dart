import 'package:flutter/material.dart';

import '../resource/app_colors.dart';
class WEditaddress extends StatefulWidget {
  final String title;
  final String subtitle;
  const WEditaddress({super.key, required this.title, required this.subtitle});

  @override
  State<WEditaddress> createState() => _WEditaddressState();
}

class _WEditaddressState extends State<WEditaddress> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16,right: 180,left: 16),
          child: Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "MainFont",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
              hintText: widget.subtitle,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.1),
                borderSide: BorderSide(
                  color: AppColors.grey.withOpacity(0.5),
                  width: 1.5,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
