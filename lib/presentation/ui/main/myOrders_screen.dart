import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/main/w_count_btn.dart';
import 'package:market_app/presentation/ui/main/w_product_price_total.dart';
import 'package:market_app/presentation/ui/main/w_shoppingCart.dart';

import '../../widgets/w_btn.dart';
import '../../widgets/w_rating.dart';
import '../resource/app_colors.dart';
import '../resource/app_icons.dart';
import 'DeliveryInformation_screen.dart';
class MyordersScreen extends StatefulWidget {
  const MyordersScreen({super.key});

  @override
  State<MyordersScreen> createState() => _MyordersScreenState();
}

class _MyordersScreenState extends State<MyordersScreen> {
  List<String> images = [
    "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
    "https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111901_mbp16-gray.png",
    "https://pngimg.com/d/baggage_PNG27.png",
    "https://www.pngplay.com/wp-content/uploads/12/Running-Shoes-PNG-Clip-Art-HD-Quality.png",
    "https://cleanshop77.ru/upload/iblock/d8f/vglxdraopwdxxd9iv7p1qrnoxtm07kkg.png",
    "https://foni.papik.pro/uploads/posts/2024-09/foni-papik-pro-l3wx-p-kartinki-chernaya-futbolka-na-prozrachnom-1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: const Text(
            textAlign: TextAlign.center,
            "My Order",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.attation),
                              Text(
                                "Delete this product?",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              Text(
                                "Are you want to delete this product?",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.primary,
                                        ),
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.yellow,
                                        ),
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              padding: EdgeInsets.all(12),
                              color: AppColors.itemColor,
                              child: Image.network(
                                "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
                                fit: BoxFit.cover,
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          right: 24,
                          child: SvgPicture.asset(AppIcons.delete),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WRating(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "Smart Watch",
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "\$120.00",
                            style: TextStyle(
                              fontFamily: "MainFont",
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ), child: Text(textAlign: TextAlign.center,"Track Order",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.attation),
                              Text(
                                "Delete this product?",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              Text(
                                "Are you want to delete this product?",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.primary,
                                        ),
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.yellow,
                                        ),
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              padding: EdgeInsets.all(12),
                              color: AppColors.itemColor,
                              child: Image.network(
                                "https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111901_mbp16-gray.png",
                                fit: BoxFit.cover,
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          right: 24,
                          child: SvgPicture.asset(AppIcons.delete),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WRating(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "Apple MacBook",
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "\$250.00",
                            style: TextStyle(
                              fontFamily: "MainFont",
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 120,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ), child: Text(textAlign: TextAlign.center,"Track Order",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.attation),
                              Text(
                                "Delete this product?",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              Text(
                                "Are you want to delete this product?",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.primary,
                                        ),
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.yellow,
                                        ),
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              padding: EdgeInsets.all(12),
                              color: AppColors.itemColor,
                              child: Image.network(
                                "https://pngimg.com/d/baggage_PNG27.png",
                                fit: BoxFit.cover,
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          right: 24,
                          child: SvgPicture.asset(AppIcons.delete),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WRating(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "Traveling Bags",
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "\$220.00",
                            style: TextStyle(
                              fontFamily: "MainFont",
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ), child: Text(textAlign: TextAlign.center,"Track Order",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.attation),
                              Text(
                                "Delete this product?",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              Text(
                                "Are you want to delete this product?",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.primary,
                                        ),
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.yellow,
                                        ),
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              padding: EdgeInsets.all(12),
                              color: AppColors.itemColor,
                              child: Image.network(
                                "https://www.pngplay.com/wp-content/uploads/12/Running-Shoes-PNG-Clip-Art-HD-Quality.png",
                                fit: BoxFit.cover,
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          right: 24,
                          child: SvgPicture.asset(AppIcons.delete),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WRating(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "New Sport Shoes",
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "\$300.00",
                            style: TextStyle(
                              fontFamily: "MainFont",
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ), child: Text(textAlign: TextAlign.center,"Track Order",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.attation),
                              Text(
                                "Delete this product?",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              Text(
                                "Are you want to delete this product?",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.primary,
                                        ),
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.yellow,
                                        ),
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              padding: EdgeInsets.all(12),
                              color: AppColors.itemColor,
                              child: Image.network(
                                "https://cleanshop77.ru/upload/iblock/d8f/vglxdraopwdxxd9iv7p1qrnoxtm07kkg.png",
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          right: 24,
                          child: SvgPicture.asset(AppIcons.delete),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WRating(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "Bag",
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "\$120.00",
                            style: TextStyle(
                              fontFamily: "MainFont",
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ), child: Text(textAlign: TextAlign.center,"Track Order",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.attation),
                              Text(
                                "Delete this product?",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              Text(
                                "Are you want to delete this product?",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFOnt",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.primary,
                                        ),
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: AppColors.yellow,
                                        ),
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
                                          ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              padding: EdgeInsets.all(12),
                              color: AppColors.itemColor,
                              child: Image.network(
                                "https://foni.papik.pro/uploads/posts/2024-09/foni-papik-pro-l3wx-p-kartinki-chernaya-futbolka-na-prozrachnom-1.png",
                                height: 110,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          right: 24,
                          child: SvgPicture.asset(AppIcons.delete),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WRating(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "Black T-shirt",
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                          child: Text(
                            "\$180.00",
                            style: TextStyle(
                              fontFamily: "MainFont",
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ), child: Text(textAlign: TextAlign.center,"Track Order",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: "Promocodes",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 10,right: 24),
                    child: Text(
                      "Apply",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MainFont"
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right:240,bottom: 24 ),
                child: Text("Order Info", style: TextStyle(
                  fontFamily: "MainFont",
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),
              WProductPriceTotal(title: 'Subtotal', price: '\$890.00'),
              SizedBox(height: 12),
              WProductPriceTotal(title: 'Shipping Charge', price: '+ \$10.00'),
              SizedBox(height: 16),
              WProductPriceTotal(title: 'Total', price: '\$900.00',color: AppColors.primary,),
              SizedBox(height: 50),
              WBtn(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryinformationScreen()));
              }, text: "Checkout")
            ],
          ),
        ),
      ),
    );
  }
}
