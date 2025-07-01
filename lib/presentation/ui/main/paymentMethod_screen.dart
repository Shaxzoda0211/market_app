import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_app/presentation/ui/main/addCard_screen.dart';
import 'package:market_app/presentation/ui/resource/app_icons.dart';

import '../resource/app_colors.dart';
class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

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
                child: SvgPicture.asset(AppIcons.cardATM),
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
                      hintText: "Saul Goodmate",
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
                      hintText: "0123 4567 8901 2345",
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
                            hintText: "09/28",
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
                            hintText: "235",
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
              const SizedBox(height: 24),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 182,
                      height: 46,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                      ),
                      child: GestureDetector(
                        onTap: (){showDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.3),
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(AppIcons.attation),
                                    const SizedBox(height: 16),
                                    const Text(
                                      "Delete this Card?",
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "MainFont",
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      "Are you want to delete this card?",
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "MainFont",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                            // Bu yerga delete logikasini yozishingiz mumkin
                                          },
                                          child: Container(
                                            width: 130,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: AppColors.primary,
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "Yes",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "MainFont",
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: 130,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: AppColors.yellow,
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "No",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "MainFont",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                          },
                        child: Center(
                          child: Text("Delete Card",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddcardScreen()));
                    },
                    child: Container(
                      width: 182,
                      height: 46,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
