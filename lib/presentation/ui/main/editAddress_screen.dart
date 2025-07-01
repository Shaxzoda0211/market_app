import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/main/w_deliveryInformation.dart';
import 'package:market_app/presentation/ui/main/w_editaddress.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';

import '../resource/app_colors.dart';

class EditaddressScreen extends StatefulWidget {
  const EditaddressScreen({super.key});

  @override
  State<EditaddressScreen> createState() => _EditaddressScreenState();
}

class _EditaddressScreenState extends State<EditaddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "Edit Address",
          style: TextStyle(
            fontFamily: "MainFont",
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Divider(),
              WEditaddress(title: 'Full Name', subtitle: 'Saul Goodmate'),
              WEditaddress(title: 'Phone Number', subtitle: '865-5585 57587'),
              WEditaddress(
                title: 'Address 01',
                subtitle: '16 E Birch Hill Road',
              ),
              WEditaddress(
                title: 'Address 02 (Optional)',
                subtitle: 'Near Fairbanks',
              ),
              WEditaddress(title: 'City', subtitle: 'New York'),
              WEditaddress(title: 'Country', subtitle: 'United State'),
              WEditaddress(title: 'Postcode', subtitle: '9913'),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 180),
                child: Text(
                  "Add Delivery Instructions",
                  style: TextStyle(
                    fontFamily: "MainFont",
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 180,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grey, width: 2),
                ),
                child: Text(
                  """16 E Birch  Hill Road  Near Fairbanks,NY, 9913 United States""",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: WBtn(onTap: () {}, text: "Save Address"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
