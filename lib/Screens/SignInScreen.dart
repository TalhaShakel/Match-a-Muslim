import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Screens/CreateAccountScreen.dart';
import 'package:dating_app/Screens/GenderSelectionScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        15.heightBox,
        Image.asset("assets/images/textimage.png"),
        15.h.heightBox,
        // 200.h.heightBox,
        Image.asset("assets/images/mainlogo.png"),
        Text(
          "Sign In",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
              fontSize: 20),
        ),
        15.heightBox,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Column(
            children: [
              Row(
                children: [
                  "\t\tEmail".text.color(ColorConstants.LabelColor).make(),
                  "*".text.color(ColorConstants.primaryDarkColor).make(),
                ],
              ),
              4.heightBox,
              textFormField(
                HintName: "Email",
                IconName: Icons.email,
              ),
              10.heightBox,
              Row(
                children: [
                  "\t\tPassword".text.color(ColorConstants.LabelColor).make(),
                  "*".text.color(ColorConstants.primaryDarkColor).make(),
                ],
              ),
              4.heightBox,
              textFormField(
                HintName: "Password",
                IconName: Icons.remove_red_eye,
              ),
              20.heightBox,
              Container(
                height: 53,
                width: 264,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => GenderSelectionScreen());
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.black,
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
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Don't have an account?"
                      .text
                      .fontWeight(FontWeight.w500)
                      .make(),
                  GestureDetector(
                    onTap: () {
                      Get.to(CreateAccountScreen());
                    },
                    child: " Sign Up"
                        .text
                        .color(ColorConstants.primaryDarkColor)
                        .fontWeight(FontWeight.w500)
                        .make(),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
