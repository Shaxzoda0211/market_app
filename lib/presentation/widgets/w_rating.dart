import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class WRating extends StatefulWidget {
  final EdgeInsets padding;
  const WRating({super.key, this.padding=const EdgeInsets.symmetric(horizontal: 2.0),});

  @override
  State<WRating> createState() => _WRatingState();
}

class _WRatingState extends State<WRating> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 24.0,
      itemPadding: widget.padding,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
