import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Screens/InitialSearchScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class GuestNumberSelection extends StatelessWidget {
  const GuestNumberSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            "What's Your Guest",
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
            padding: EdgeInsets.symmetric(horizontal: 27.h),
            child: Column(
              children: [
                10.heightBox,
                LabelFields("Guest Number", "*"),
                4.heightBox,

                Simpletextfield("e.g 46"),
                // TableCountNumber(),
                20.heightBox,
                Container(
                  height: 53,
                  width: 264,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => InitialSearchScreen());
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

  Row LabelFields(var Name, Star) {
    return Row(
      children: [
        "\t\t${Name}".text.color(ColorConstants.LabelColor).make(),
        "$Star".text.color(ColorConstants.primaryDarkColor).make(),
      ],
    );
  }

  TextFormField Simpletextfield(var hinttxtName) {
    return TextFormField(
        decoration: InputDecoration(
      // labelText: 'Email',
      filled: true,
      fillColor: ColorConstants.textFormBackGColor,
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstants.primaryDarkColor, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      ////////////////////////////////
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstants.primaryDarkColor, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      hintText: hinttxtName,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ));
  }
}
