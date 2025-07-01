import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/presentation/ui/main/DeliveryInformation_screen.dart';
import 'package:market_app/presentation/ui/main/myOrders_screen.dart';
import 'package:market_app/presentation/ui/main/paymentMethod_screen.dart';
import 'package:market_app/presentation/ui/resource/app_icons.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';

import '../resource/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        title: Center(
          child: const Text(
            "My Account",
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(color: AppColors.black),

      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppImages.person),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    AppIcons.editIcon,
                    width: 36,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              "Saul Goodmate",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "saulgo35@gmail.com",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) => setState(() => isSwitched = value),
                    activeColor: Colors.green,
                    inactiveThumbColor: AppColors.grey,
                    inactiveTrackColor: Colors.black12,
                  )
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "My Orders",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward, size: 24),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyordersScreen()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward, size: 24),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dark Mode",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) => setState(() => isSwitched = value),
                    activeColor: Colors.green,
                    inactiveThumbColor: AppColors.grey,
                    inactiveTrackColor: Colors.black12,
                  )
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Shipping Addresses",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward, size: 24),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryinformationScreen()));
              },
            ),
            const Divider(),

            // Logout
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 12,right: 340),
              child: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
