import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_app/presentation/ui/main/w_item_color.dart';
import 'package:market_app/presentation/ui/main/w_item_text.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_icons.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';
import 'package:market_app/presentation/widgets/w_rating.dart';

import '../screens/splish/widget/dot_w.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int selectedColorIndex = -1;
  List<Color> colors = [
    AppColors.greenbold,
    AppColors.yellowb,
    AppColors.brown,
    AppColors.blueo,
    AppColors.greey,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppIcons.back),
                      SvgPicture.asset(AppIcons.like),
                    ],
                  ),
                ),
                SizedBox(
                  height: 280,
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    controller: _pageController,
                    children: [
                      Image.network(
                        "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTSGMzhhRVOWiQhGCtedtql9YR2OZvde1BzpUaUns_KxF7-bkyzRZ21MetLTJSN84ve4&usqp=CAU",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://www.shutterstock.com/image-photo/varna-bulgaria-october-15-2015-260nw-337214816.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Wdot(
                        color:
                            _currentPage == index
                                ? AppColors.primary
                                : AppColors.primary.withOpacity(0.5),
                      );
                    }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Smart Watches",
                      style: TextStyle(
                        fontFamily: 'MainFont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$120",
                      style: TextStyle(
                        fontFamily: 'MainFont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WRating(),
                    Text(
                      "Available in stock",
                      style: TextStyle(
                        fontFamily: 'MainFont',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.green,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 28),
                  child: Divider(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Color Variant",
                    style: TextStyle(
                      fontFamily: 'MainFont',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: List.generate(5, (index) {
                      return WItemColor(
                        color: colors[index],
                        index: index,
                        onTap: (int index) {
                          setState(() {
                            selectedColorIndex = index;
                          });
                        },
                        isSelected: selectedColorIndex == index,
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 28),
                  child: Divider(),
                ),
                Column(
                  children: [
                    WItemText(title: "Brand", subtitle: "Noise"),
                    WItemText(
                      title: "Model Name",
                      subtitle: "ColorFit Pulse 2",
                    ),
                    WItemText(
                      title: "Colour",
                      subtitle: "Air Superiority Blue",
                    ),
                    WItemText(title: "Style", subtitle: "Modern"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 28),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(AppIcons.car),
                        Text(
                          "Get Free Delivery",
                          style: TextStyle(
                            fontFamily: 'MainFont',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(AppIcons.money),
                        Text(
                          "Pay On Delivery",
                          style: TextStyle(
                            fontFamily: 'MainFont',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(AppIcons.replace),
                        Text(
                          "07 Days Replace",
                          style: TextStyle(
                            fontFamily: 'MainFont',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(AppIcons.policy),
                        Text(
                          "Warranty Policy",
                          style: TextStyle(
                            fontFamily: 'MainFont',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 28),
                  child: Divider(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "About this item",
                    style: TextStyle(
                      fontFamily: 'MainFont',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  textAlign: TextAlign.left,
                  """At vero eos et accusamus et iusto odio dig ssimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi...""",
                  style: TextStyle(color: AppColors.grey),
                ),
                SizedBox(height: 16),
                Text(
                  """At vero eos et accusamus et iusto odio dig ssimos ducimus qui blanditiis praesentium voluptatum deleniti atque .""",
                  style: TextStyle(color: AppColors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
