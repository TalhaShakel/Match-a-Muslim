import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class GuestProfileScreen extends StatelessWidget {
  const GuestProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 98.h,
          decoration: BoxDecoration(
            color: ColorConstants.primaryDarkColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.w),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/mainlogo.png",
                    height: 58.h,
                  ),
                  // 50.w.widthBox,
                  "Ibraheem"
                      .text
                      .fontWeight(FontWeight.w700)
                      .size(24.sp)
                      .make(),
                  "#42".text.fontWeight(FontWeight.w700).size(24.sp).make(),
                ]),
          ),
        ),
        30.h.heightBox,
        //////////////////
        Container(
          height: 195.h,
          width: 229.w,
          decoration: BoxDecoration(
            border:
                Border.all(width: 3, color: ColorConstants.primaryDarkColor),
            color: ColorConstants.SecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(21)),
          ),
          child: Icon(
            Icons.person,
            size: 160,
            color: ColorConstants.primaryDarkColor,
          ),
        ),
        /////////////////////
        20.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GuestsmallContainer(),
            GuestsmallContainer(),
          ],
        ),
        10.h.heightBox,
        Container(
          height: 67.h,
          width: 217.w,
          decoration: BoxDecoration(
            border:
                Border.all(width: 3, color: ColorConstants.primaryDarkColor),
            color: ColorConstants.SecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(21)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.cake,
                  color: ColorConstants.primaryDarkColor,
                ),
                Icon(
                  Icons.vertical_align_bottom,
                  color: ColorConstants.primaryDarkColor,
                ),
                "Engineer"
                    .text
                    .size(24)
                    .color(ColorConstants.primaryDarkColor)
                    .fontWeight(FontWeight.w700)
                    .make()
              ],
            ),
          ),
        ),
        10.h.heightBox,
        Container(
          height: 67.h,
          width: 217.w,
          decoration: BoxDecoration(
            border:
                Border.all(width: 3, color: ColorConstants.primaryDarkColor),
            color: ColorConstants.SecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(21)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.location_on,
                  color: ColorConstants.primaryDarkColor,
                ),
                Icon(
                  Icons.vertical_align_bottom,
                  color: ColorConstants.primaryDarkColor,
                ),
                "Manchester"
                    .text
                    .size(24)
                    .color(ColorConstants.primaryDarkColor)
                    .fontWeight(FontWeight.w700)
                    .make()
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container GuestsmallContainer() {
    return Container(
      height: 67.h,
      width: 116.w,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: ColorConstants.primaryDarkColor),
        color: ColorConstants.SecondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(21)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.cake,
              color: ColorConstants.primaryDarkColor,
            ),
            Icon(
              Icons.vertical_align_bottom,
              color: ColorConstants.primaryDarkColor,
            ),
            "22"
                .text
                .size(24)
                .color(ColorConstants.primaryDarkColor)
                .fontWeight(FontWeight.w700)
                .make()
          ],
        ),
      ),
    );
  }
}
