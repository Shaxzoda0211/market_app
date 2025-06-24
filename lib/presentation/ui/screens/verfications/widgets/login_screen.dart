import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/main/main_screen.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/forget_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/please_wait_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/register_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/w_outline_btn.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';
import 'package:flutter/gestures.dart';
import '../../../resource/app_icons.dart';
import '../../resource/app_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    const Text(
                      "Login to your account",
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
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(bottom:60 , top:30),
                      child:Align(alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgetScreen()));
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(fontSize: 16,color: AppColors.primary,fontWeight: FontWeight.bold),
                        ),
                      ),
                      ),
                    ),
                    WBtn(text:"Login",onTap:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PleaseWaitScreenScreen(page: "Login")));
                    }),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Text("Or",style: TextStyle(color: AppColors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        WOutlineBtn(text: "Google",icon:AppIcons.google,onTap: (){} ),
                        SizedBox(width: 12),
                        WOutlineBtn(text: "Facebook",icon:AppIcons.facebook ,onTap: (){}),
                      ],
                    ),
                  ],
                ),
                Text.rich(
                    TextSpan(
                  children: [
                    TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                            color: AppColors.primary,fontSize: 18,fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                    ..onTap=(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    }),
                  ],
                  text: "Don't have an account?",style: TextStyle(color: AppColors.grey,fontSize: 18)
                )
                )
              ],
            ),
          ),
        ),
      );
  }
}
