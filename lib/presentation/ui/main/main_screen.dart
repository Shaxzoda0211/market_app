import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_app/presentation/ui/main/product_screen.dart';
import 'package:market_app/presentation/ui/main/w_item_arrival.dart';
import 'package:market_app/presentation/ui/main/w_item_drawer.dart';
import 'package:market_app/presentation/ui/main/w_item_shop.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';
import 'package:market_app/presentation/ui/resource/app_icons.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
        key: _scaffoldKey,
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          forceMaterialTransparency: true,
          automaticallyImplyLeading: false,
          //leading: SvgPicture.asset(AppIcons.menu),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(AppImages.person, width: 40),
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: SvgPicture.asset(AppIcons.menu),
                ),
              ),
              const Text.rich(
                TextSpan(
                  text: 'Swip',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                  children: [
                    TextSpan(
                      text: 'wide',
                      style: TextStyle(
                        fontSize: 28,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(90),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Smartphone",
                    hintStyle: TextStyle(color: AppColors.grey, fontSize: 16),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28,
                      color: AppColors.grey,
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(5),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: AppColors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 20),
                  child: Text(
                    "Shop By Category",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    WItemShop(title: "Clothes", icon: AppIcons.clothes),
                    WItemShop(title: "Laptop", icon: AppIcons.laptop),
                    WItemShop(title: "Bag", icon: AppIcons.bag),
                    WItemShop(title: "Shoes", icon: AppIcons.shoes),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 20),
                  child: Text(
                    "Newest Arrival",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                  physics: BouncingScrollPhysics(),
                  children: [
                    WItemArrival(
                      image: images[0],
                      title: 'Smart Watches',
                      price: '\$120.00',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                    ),
                    WItemArrival(
                      image: images[1],
                      title: 'Apple MacBook',
                      price: '\$250.00',
                      onTap: () {},
                    ),
                    WItemArrival(
                      image: images[2],
                      title: 'Traveling Bags',
                      price: '\$220.00',
                      onTap: () {},
                    ),
                    WItemArrival(
                      image: images[3],
                      title: 'New Sport Shoes',
                      price: '\$300.00',
                      onTap: () {},
                    ),
                    WItemArrival(
                      image: images[4],
                      title: 'Bag',
                      price: '\$120.00',
                      onTap: () {},
                    ),
                    WItemArrival(
                      image: images[5],
                      title: 'Black T-shirt',
                      price: '\$180.00',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 36),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(AppIcons.home),
              SvgPicture.asset(AppIcons.wishlist),
              SvgPicture.asset(AppIcons.bag1),
              SvgPicture.asset(AppIcons.account),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: AppColors.white,
          child: ListView(
            children: [
              SvgPicture.asset(AppImages.logo),
              const SizedBox(height: 28),
              const Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'Swip',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                    children: [
                      TextSpan(
                        text: 'wide',
                        style: TextStyle(
                          fontSize: 28,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Divider(color: AppColors.grey),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.gift),
                ),
                title: Text(
                  "Rewards",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MainFont',
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.help),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MainFont',
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.action, height: 38),
                ),
                title: Text(
                  "Contact Us",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MainFont',
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.privacy),
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MainFont',
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.logout),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MainFont',
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
