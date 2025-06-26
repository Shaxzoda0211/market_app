import 'package:flutter/material.dart';

import '../resource/app_colors.dart';
class WCountBtn extends StatefulWidget {
  const WCountBtn({super.key});

  @override
  State<WCountBtn> createState() => _WCountBtnState();
}

class _WCountBtnState extends State<WCountBtn> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            if(count>1){
              setState(() {
                count--;
              });
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.itemColor,
              borderRadius: BorderRadius.circular(8),

            ),
            child: Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text("$count",style: TextStyle(color: AppColors.black,fontSize: 20),),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              count++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),

            ),
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
