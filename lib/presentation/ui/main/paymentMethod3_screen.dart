import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_app/presentation/ui/main/addCard_screen.dart';
import 'package:market_app/presentation/ui/resource/app_icons.dart';

import '../resource/app_colors.dart';
class Paymentmethod3Screen extends StatelessWidget {
  const Paymentmethod3Screen({super.key});

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Divider(),
              Container(
                padding: const EdgeInsets.only(top: 40,bottom: 40),
                child: SvgPicture.asset(AppIcons.cardATM3),
              ),
              const SizedBox(height: 24),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 225),
                    child: Text("Card Holder Name",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Card Holder Name",
                      hintStyle: TextStyle(
                        color: AppColors.grey.withOpacity(0.9),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.grey.withOpacity(0.4),
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 270),
                    child: Text("Card Number",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Card Number",
                      hintStyle: TextStyle(
                        color: AppColors.grey.withOpacity(0.9),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.grey.withOpacity(0.4),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 78),
                          child: Text("Expiry Date",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "00/00",
                            hintStyle: TextStyle(
                              color: AppColors.grey.withOpacity(0.9),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.grey.withOpacity(0.4),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 132),
                          child: Text("CVV",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "000",
                            hintStyle: TextStyle(
                              color: AppColors.grey.withOpacity(0.9),
                            ),
                            enabledBorder:  OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.grey.withOpacity(0.4),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
