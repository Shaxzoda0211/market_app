import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/forget_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/w_outline_btn.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';

import '../../../resource/app_icons.dart';
import '../../resource/app_icons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    'Register',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const Text(
                    "Create new account",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.grey,),),
                ],
              ),
              Column(
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Email address",border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    decoration: InputDecoration(labelText: "Phone number",border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Confirm password",border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(bottom:60 , top:30),
                    child:Align(alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgetScreen()));
                        },
                        child: const Text.rich(
                          TextSpan(
                            text: 'By signing below, you agree to the ',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Terms of Use',
                                style: TextStyle(
                                  color: AppColors.primary,fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Notice',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  WBtn(text:"Sign up",onTap:(){}),
                  SizedBox(height: 24),
                  const Text.rich(TextSpan(
                      children: [
                        TextSpan(text: "Login",style: TextStyle(color: AppColors.primary,fontSize: 18,fontWeight: FontWeight.bold)),
                      ],
                      text: "Already have an account?",style: TextStyle(color: AppColors.grey,fontSize: 18,fontWeight: FontWeight.bold)
                  )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
