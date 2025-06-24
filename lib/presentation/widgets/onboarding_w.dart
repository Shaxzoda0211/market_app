import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui/resource/app_colors.dart';
class WOnboarding extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const WOnboarding({super.key, required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        SizedBox(height: 100),
        Text(
          title,
          style: const TextStyle(
              color: AppColors.black,fontSize: 26,fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 24),
        SizedBox(
          width: 340,
          child: Text(
            textAlign: TextAlign.center,
            description,
            style: const TextStyle(color: AppColors.grey,fontSize: 18)),
        ),
      ],
    );
  }
}
