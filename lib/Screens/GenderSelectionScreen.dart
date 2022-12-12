import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Screens/ProfileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class GenderSelectionScreen extends StatelessWidget {
  const GenderSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: 390.w,
              height: 200.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/GStop.png",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),

            // Container(height: 232, child: Image.asset("assets/images/GStop.png")),
            Text(
              "Select Your Gender",
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 143.h,
                    width: 138.w,
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/VectorF.png"),
                        Text(
                          "Women",
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp),
                        )
                      ],
                    )),
                Container(
                    height: 143,
                    width: 138,
                    decoration: BoxDecoration(
                      color: ColorConstants.SecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/VectorM.png"),
                        Text(
                          "Man",
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp),
                        )
                      ],
                    )),
              ],
            ),
            ///////////////
            10.heightBox,
            Image.asset("assets/images/mainlogo.png"),
            Container(
              height: 53.h,
              width: 264.w,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => ProfileCreationScreen());
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
      ),
    );
  }
}
