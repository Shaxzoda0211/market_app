import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resource/app_colors.dart';
import '../resource/app_icons.dart';

class WLike extends StatefulWidget {
  const WLike({super.key});

  @override
  State<WLike> createState() => _WLikeState();
}

class _WLikeState extends State<WLike> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: SvgPicture.asset(isSelected ? AppIcons.wishlist1 : AppIcons.like),
    );
  }
}
