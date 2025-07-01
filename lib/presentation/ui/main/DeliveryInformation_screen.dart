import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/main/addAddress_screen.dart';
import 'package:market_app/presentation/ui/main/changeDelivery_screen.dart';
import 'package:market_app/presentation/ui/main/editAddress_screen.dart';
import 'package:market_app/presentation/ui/main/w_deliveryInformation.dart';
import '../resource/app_colors.dart';

class DeliveryinformationScreen extends StatelessWidget {
  const DeliveryinformationScreen({super.key});

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
                  "Delivery Information :",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangedeliveryScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, top: 16),
                  child: Text(
                    "Change",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
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
                  child: WDeliveryinformation(title: "Saul Goodmate", subtitle: """16 E Birch Hill Road
Fairbanks, NY, 99312
United States""",phoneNumber: "865-5585 57587")
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    width: 160,
                    height: 200,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey, width: 2),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddaddressScreen()));
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 60,
                                  color: AppColors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          """Add
Address""",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 18,
                            fontFamily: "MainFont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 16),
                child: Text(
                  "Recent Delivery Address :",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child:WDeliveryinformation(title: "Anne Thurium", subtitle: """35 State Route 05, aw,
Grantsville 26143
United States""")
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: WDeliveryinformation(title: "Cherry Blossom", subtitle: """14 Myrtle Avenue 0128,
Madison,nj, 3940
United States""")
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 16),
                child: Text(
                  "All Delivery Address :",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: WDeliveryinformation(title: "Anne Thurium", subtitle: """14 Myrtle Avenue 0128,
Madison,nj, 3940
United States""")
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey, width: 2),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cherry Blossom",
                              style: TextStyle(
                                fontFamily: "MainFont",
                                color: AppColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Icon(Icons.edit, color: AppColors.green),
                          ],
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          """14 Myrtle Avenue 0128,Madison,nj, 3940 United States""",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontFamily: "MainFont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
