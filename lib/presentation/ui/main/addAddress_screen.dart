import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/main/w_deliveryInformation.dart';
import 'package:market_app/presentation/ui/main/w_editaddress.dart';
import 'package:market_app/presentation/widgets/w_btn.dart';

import '../resource/app_colors.dart';

class AddaddressScreen extends StatefulWidget {
  const AddaddressScreen({super.key});

  @override
  State<AddaddressScreen> createState() => _AddaddressScreenState();
}

class _AddaddressScreenState extends State<AddaddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        forceMaterialTransparency: true,
        title: Text(
          "Add Address",
          style: TextStyle(
            fontFamily: "MainFont",
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text("Add New Address",style: TextStyle(
                          fontFamily: "MainFont",
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                                    ),
                      ),
                                SizedBox(height: 16),
                                Text("""Fill The Given Details And Create New
Shipping Address""",style: TextStyle(
                                    fontFamily: "MainFont",
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                    ],
                  ),
                ),
          Expanded(child:  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  WEditaddress(title: 'Full Name', subtitle: 'Enter Full Name'),
                  WEditaddress(title: 'Phone Number', subtitle: 'Enter Phone Number'),
                  WEditaddress(
                    title: 'Address 01',
                    subtitle: 'Enter Address',
                  ),
                  WEditaddress(
                    title: 'Address 02 (Optional)',
                    subtitle: 'Enter Addresss',
                  ),
                  WEditaddress(title: 'City', subtitle: 'Enter City'),
                  WEditaddress(title: 'Country', subtitle: 'Enter Country'),
                  WEditaddress(title: 'Postcode', subtitle: 'Enter Postcode'),
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
                    child: Text("Write Something Here",style: TextStyle(fontSize: 16),
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
          ),)
        ],
       
      ),
    );
  }
}
