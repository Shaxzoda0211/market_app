import 'package:flutter/material.dart';

import '../resource/app_colors.dart';
class WProductPriceTotal extends StatefulWidget {
  final String title;
  final String price;
  final Color color;
  const WProductPriceTotal({super.key, required this.title, required this.price, this.color=AppColors.grey});

  @override
  State<WProductPriceTotal> createState() => _WProductPriceTotalState();
}

class _WProductPriceTotalState extends State<WProductPriceTotal> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              color: AppColors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "MainFont"
          ),
        ),
        Text(
          widget.price,
          style: TextStyle(
            color:widget.color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "MainFont"
          ),
        ),
      ],
    );
  }
}
