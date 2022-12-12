import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Screens/GuestnumberSelection.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'EventSelectionScreen.dart';

class TableNumSelection extends StatelessWidget {
  TableNumSelection({super.key});

  var selectIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            width: Get.width,
            height: 200.h,
            child: Image.asset(
              "assets/images/mainlogo.png",
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/GStop.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Text(
            "What's Your Table",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
                fontSize: 36.sp),
          ),
          Text(
            "Number?",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
                fontSize: 36.sp),
          ),
          25.heightBox,
          Padding(
            padding: const EdgeInsets.only(right: 27.0, left: 21),
            child: Column(
              children: [
                TableCountNumber("1", "2", "3", "4"),
                10.heightBox,
                TableCountNumber("5", "6", "7", "8"),
                10.heightBox,
                TableCountNumber("9", "10", "11", "12"),
                30.heightBox,
                Container(
                  height: 53.h,
                  width: 264.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => GuestNumberSelection());
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.black),
                      primary: ColorConstants.primaryDarkColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            // margin: EdgeInsets.only(top: 20),
            child: Image(
              image: AssetImage('assets/images/GSbg.PNG'),
              // fit: BoxFit.,
              height: 254.h,
              fit: BoxFit.fitHeight,
            ),
          )
        ]),
      ),
    );
  }

  Row TableCountNumber(var Num1, Num2, Num3, Num4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
              height: 53.h,
              width: 69.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                color: ColorConstants.textFormBackGColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(child: "$Num1".text.black.bold.size(32).make())),
        ),
        ///////////////////////////////
        GestureDetector(
          onTap: () {},
          child: Container(
              height: 53.h,
              width: 69.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                color: ColorConstants.textFormBackGColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(child: "$Num2".text.black.bold.size(32).make())),
        ),
        //////////////////////////////
        GestureDetector(
          onTap: () {},
          child: Container(
              height: 53.h,
              width: 69.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                color: ColorConstants.textFormBackGColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(child: "$Num3".text.black.bold.size(32).make())),
        ),
        /////////////////////////
        GestureDetector(
          onTap: () {},
          child: Container(
              height: 53.h,
              width: 69.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                color: ColorConstants.textFormBackGColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(child: "$Num4".text.black.bold.size(32).make())),
        ),
      ],
    );
  }
}
