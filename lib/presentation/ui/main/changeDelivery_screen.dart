import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/main/w_changeDelivery.dart';
import 'package:market_app/presentation/ui/main/w_deliveryInformation.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';

import '../resource/app_colors.dart';
import 'addAddress_screen.dart';
class ChangedeliveryScreen extends StatefulWidget {
  const ChangedeliveryScreen({super.key});

  @override
  State<ChangedeliveryScreen> createState() => _ChangedeliveryScreenState();
}

class _ChangedeliveryScreenState extends State<ChangedeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Information",
          style: TextStyle(
            fontFamily: "MainFont",
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 16),
                child: Text(
                  "Select  Delivery Address :",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WChangedelivery(title: "Anne Thurium ", subtitle: """35 State Route 5,
Grantsville 26143
United States""", phoneNumber: "865-5585 57587")
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WChangedelivery(title: "Cherry Blossom", subtitle: """14 Myrtle Avenue
Madison,nj, 3940
United States""", phoneNumber: "865-5585 57587")
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WChangedelivery(title: "Anne Thurium ", subtitle: """35 State Route 5,
Grantsville 26143
United States""", phoneNumber: "865-5585 57587")
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WChangedelivery(title: "Cherry Blossom", subtitle: """14 Myrtle Avenue
Madison,nj, 3940
United States""", phoneNumber: "865-5585 57587")
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WChangedelivery(title: "Anne Thurium ", subtitle: """35 State Route 5,
Grantsville 26143
United States""", phoneNumber: "865-5585 57587")
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WChangedelivery(title: "Cherry Blossom", subtitle: """14 Myrtle Avenue
Madison,nj, 3940
United States""", phoneNumber: "865-5585 57587")
                ),
              ],
            ),
          ),
          SizedBox(height: 130),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: WBtn(onTap: (){}, text: "Change Address"),
          )
        ],
      ),
    );
  }
}
