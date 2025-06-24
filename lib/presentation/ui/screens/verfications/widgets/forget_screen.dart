import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/reset_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/w_outline_btn.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';

import '../../../resource/app_icons.dart';
import '../../resource/app_icons.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset('assets/images/logo.svg',width: 90,),
                  const Text(
                    'Forget ',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const Text(
                    "Forget your password",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.grey,),),
                ],
              ),
              Column(
                children: [
                  const Text(textAlign: TextAlign.center,"""Please enter your email address below
you will receive a link to create a new 
password via email""",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 32),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Email address",border: OutlineInputBorder(),
                    ),
                  ),SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: WBtn(text:"Continue",onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetScreen()));
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
