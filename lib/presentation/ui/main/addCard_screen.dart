import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/main/paymentMethod3_screen.dart';

import '../resource/app_colors.dart';
import '../resource/app_icons.dart';
class AddcardScreen extends StatelessWidget {
  const AddcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Payment Method",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "MainFont",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 270),
                child: Text("No Card Details",style: TextStyle(color: AppColors.grey,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "MainFont"),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:350),
                child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Paymentmethod3Screen()));
                      },
                      child: Container(
                        width: 380,
                        height: 55,
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                        ),
                        child: Center(
                          child: Text("+ Add Card",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
