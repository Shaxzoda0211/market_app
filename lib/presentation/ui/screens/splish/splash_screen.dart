import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/screens/onboarding/onboarding_screen1.dart';
import 'package:market_app/presentation/ui/screens/splish/widget/dot_w.dart';

import '../../resource/app_colors.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
  _navigateToOnboarding();
    super.initState();
  }
 Future<void> _navigateToOnboarding() async{
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OnboardingScreen1()),
  );

 }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              children: [
                SvgPicture.asset("assets/images/logo.svg"),
                const SizedBox(height: 40),
                Text.rich(
                    TextSpan(
                      text: 'Swip',style: TextStyle(color: AppColors.primary,fontWeight: FontWeight.bold,fontSize: 38),
                      children: [
                       TextSpan(
                         text: 'wide',style: TextStyle(
                         fontSize: 38,
                         color:AppColors.black,
                         fontWeight: FontWeight.bold,
                       )
                       )
                      ]
                )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                  List.generate(5, (index){
                    return  Wdot(color: AppColors.primary.withOpacity(1-0.2*index));
                  }
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
