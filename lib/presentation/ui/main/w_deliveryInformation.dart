import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/main/editAddress_screen.dart';

import '../resource/app_colors.dart';
class WDeliveryinformation extends StatefulWidget {
  final String title;
  final String subtitle;
  final String phoneNumber;
  const WDeliveryinformation({super.key, required this.title, required this.subtitle, this.phoneNumber=""});

  @override
  State<WDeliveryinformation> createState() => _WDeliveryinformationState();
}

class _WDeliveryinformationState extends State<WDeliveryinformation> {
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
               GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>EditaddressScreen()));
                   },
                   child: Icon(Icons.edit, color: AppColors.green)),
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
