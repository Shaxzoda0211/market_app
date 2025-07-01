import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/main/w_count_btn.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';

import '../../widgets/w_rating.dart';
import '../resource/app_colors.dart';
import '../resource/app_icons.dart';
class WShoppingcart extends StatefulWidget {
  final String productName;
  final String price;
  final String image;
  const WShoppingcart({super.key, required this.productName, required this.price, required this.image});

  @override
  State<WShoppingcart> createState() => _WShoppingcartState();
}

class _WShoppingcartState extends State<WShoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
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
                      widget.image,
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 16,
                right: 24,
                child: GestureDetector(
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
                                    fontFamily: "MainFont",
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: AppColors.primary,
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
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
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "MainFOnt",
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
                  child: SvgPicture.asset(AppIcons.delete),
                ),
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
                  widget.productName,
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
                  widget.price,
                  style: TextStyle(
                    fontFamily: "MainFont",
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              WCountBtn(),
            ],
          ),
        ],
      ),
    );
  }
}
