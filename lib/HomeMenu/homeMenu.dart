import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeMenuScreen extends StatelessWidget {
  const HomeMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              HomeScreenButtons("See My Requests"),
              28.h.heightBox,
              HomeScreenButtons("Send a Request"),
              28.h.heightBox,
              HomeScreenButtons("Contact Us"),
            ],
          ),
        ),
      ),
    );
  }

  Center HomeScreenButtons(var textName) {
    return Center(
      child: Container(
        height: 49.h,
        width: 335.w,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "$textName",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500,
                fontSize: 24.sp),
          ),
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: 2, color: Colors.black),
            primary: ColorConstants.primaryDarkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
