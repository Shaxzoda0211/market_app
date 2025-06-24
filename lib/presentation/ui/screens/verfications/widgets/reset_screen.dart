import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/please_wait_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/w_outline_btn.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/please_wait_screen.dart';
import '../../../resource/app_icons.dart';
import '../../resource/app_icons.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

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
                    'Reset ',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const Text(
                    "Reset your password",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.grey,),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Enter Your New Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 36),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 28),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Confirm password ",border: OutlineInputBorder(),
                    ),
                  ),SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: WBtn(text:"Change Password",onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PleaseWaitScreenScreen(page: 'ResetScreen',)));
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
