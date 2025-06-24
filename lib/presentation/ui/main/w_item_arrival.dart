import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../resource/app_colors.dart';
class WItemArrival extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const WItemArrival({super.key, required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 0.1),
          padding: EdgeInsets.all(12),
          color: AppColors.itemColor,
          child: Image.network(fit: BoxFit.cover, height: 120,
              width: double.infinity,image
          ),
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 24.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
         Padding(
          padding:  EdgeInsets.only(top:8.0,bottom: 6.0),
          child: Text(title,
            style: TextStyle(color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
         Padding(
          padding:  EdgeInsets.only(top:8.0,bottom: 6.0),
          child: Text(price,
            style: TextStyle(
              fontFamily:"MainFont",
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
