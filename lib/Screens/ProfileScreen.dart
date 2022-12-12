import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Screens/EventSelectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileCreationScreen extends StatelessWidget {
  const ProfileCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: 200.h,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // IconButton(onPressed: () {}, icon: )

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back)),
                    ),
                    // Spacer(),
                    SizedBox(
                      width: Get.width / 3.9,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/images/mainlogo.png",
                      ),
                    ),
                  ],
                ),
                // child: Image.asset(
                //   "assets/images/mainlogo.png",
                // ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/GStop.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fill In Your Profile",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontSize: 32),
                    ),
                    LabelFields("First Name", "*"),
                    Container(height: 46.h, child: Simpletextfield("Name")),
                    4.heightBox,
                    LabelFields("Age", "*"),
                    Container(height: 46.h, child: Simpletextfield("Age")),
                    4.heightBox,

                    LabelFields("Occuption", ""),
                    Container(
                        height: 46.h, child: Simpletextfield("e.g Teacher")),
                    4.heightBox,

                    LabelFields("Location", ""),
                    Container(
                        height: 46.h, child: Simpletextfield("e.g Manchester")),

                    ////////////////////////////
                    5.heightBox,
                    LabelFields("Add a Picture?", ""),
                    5.heightBox,

                    Container(
                      height: 112.h,
                      width: 106.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 3, color: ColorConstants.primaryDarkColor),
                        color: ColorConstants.textFormBackGColor,
                        borderRadius: BorderRadius.all(Radius.circular(21)),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 50,
                        color: ColorConstants.primaryDarkColor,
                      ),
                    ),
                    15.heightBox,
                    ///////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 53.h,
                          width: 264.w,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => EventSelectionScreen());
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
                              primary: ColorConstants.textFormBackGColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /////////////////////
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
        "\t\t$Name".text.color(ColorConstants.LabelColor).make(),
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
