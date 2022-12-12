import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Screens/TableNumSelection.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class EventSelectionScreen extends StatelessWidget {
  const EventSelectionScreen({super.key});

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
          // 15.heightBox,
          // Image.asset("assets/images/textimage.png"),
          // 15.heightBox,
          // Image.asset("assets/images/mainlogo.png"),
          Text(
            "Select The Event",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
                fontSize: 36.sp),
          ),
          25.heightBox,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Column(
              children: [
                Container(
                  height: 49.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    color: ColorConstants.primaryDarkColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\t\tManchester"
                          .text
                          .size(24.sp)
                          .fontWeight(FontWeight.w500)
                          .black
                          .make(),
                      "08/01/23 "
                          .text
                          .size(24.sp)
                          .fontWeight(FontWeight.w500)
                          .black
                          .make(),
                    ],
                  ),
                ),
                18.heightBox,
                Container(
                  height: 49.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    color: ColorConstants.textFormBackGColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\t\tLeeds"
                          .text
                          .size(24.sp)
                          .fontWeight(FontWeight.w500)
                          .black
                          .make(),
                      "08/01/23 "
                          .text
                          .size(24.sp)
                          .fontWeight(FontWeight.w500)
                          .black
                          .make(),
                    ],
                  ),
                ),
                50.heightBox,
                Container(
                  height: 53.h,
                  width: 264.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => TableNumSelection());
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
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
}
