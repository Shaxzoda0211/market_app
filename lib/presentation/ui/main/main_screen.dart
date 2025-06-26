import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_app/presentation/ui/main/cart_screen.dart';
import 'package:market_app/presentation/ui/main/home_screen.dart';
import 'package:market_app/presentation/ui/main/product_screen.dart';
import 'package:market_app/presentation/ui/main/profile_screen.dart';
import 'package:market_app/presentation/ui/main/w_item_arrival.dart';
import 'package:market_app/presentation/ui/main/w_item_drawer.dart';
import 'package:market_app/presentation/ui/main/w_item_shop.dart';
import 'package:market_app/presentation/ui/main/wishlist_screen.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_icons.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

  }

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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: TabBarView(
          controller: _tabController,
          children: [
            HomeScreen(),
            WishlistScreen(),
            CartScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            tabs: [
              Tab(
                child: SvgPicture.asset(
                  selectedIndex == 0 ? AppIcons.redHome : AppIcons.home,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  selectedIndex == 1 ? AppIcons.redLike : AppIcons.wishlist,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  selectedIndex == 2 ? AppIcons.redCart : AppIcons.bag1,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  selectedIndex == 3 ? AppIcons.redProfile : AppIcons.account,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
