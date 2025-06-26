import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/main/product_screen.dart';
import 'package:market_app/presentation/ui/main/w_item_arrival.dart';
import 'package:market_app/presentation/ui/main/w_like.dart';
import 'package:market_app/presentation/ui/resource/app_colors.dart';

import '../resource/app_icons.dart';
class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
        title: const Text("Wishlist",
        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: AppColors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
          physics: BouncingScrollPhysics(),
          children: List.generate(images.length, (index) {
            return Stack(
              children: [
                WItemArrival(
                  image: images[index],
                  title: [
                    'Smart Watches',
                    'Apple MacBook',
                    'Traveling Bags',
                    'New Sport Shoes',
                    'Bag',
                    'Black T-shirt'
                  ][index],
                  price: [
                    '\$120.00',
                    '\$250.00',
                    '\$220.00',
                    '\$300.00',
                    '\$120.00',
                    '\$180.00'
                  ][index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductScreen()),
                    );
                  },
                ),
                Positioned(
                  top: 12,
                  right: 12,
                 child:WLike(),
                  ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
