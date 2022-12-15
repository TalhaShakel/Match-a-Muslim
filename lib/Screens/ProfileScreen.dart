import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Models/Service.dart';
import 'package:dating_app/Screens/EventSelectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileCreationScreen extends StatelessWidget {
  ProfileCreationScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _NameController = TextEditingController();
  TextEditingController _AgeController = TextEditingController();
  TextEditingController _OccupationController = TextEditingController();
  TextEditingController _LocationController = TextEditingController();

  @override
  void dispose() {
    _NameController.dispose();
    _AgeController.dispose();
    _OccupationController.dispose();
    _LocationController.dispose();
  }

  final ImagePicker _picker = ImagePicker();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width.w,
                  height: 200.h,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // IconButton(onPressed: () {}, icon: )

                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.w, horizontal: 8.h),
                        child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 30,
                              // color: Colors.white,
                              color: Colors.black,
                            )),
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
                      Container(
                          height: 46.h,
                          child:

                              // Simpletextfield("Name",)
                              textFormField(
                                  IconName: null,
                                  HintName: "Name",
                                  txtController: _NameController)),
                      4.heightBox,
                      LabelFields("Age", "*"),
                      Container(
                          height: 46.h,
                          child:
                              // Simpletextfield("Age")
                              textFormField(
                                  IconName: null,
                                  HintName: "Age",
                                  txtController: _AgeController)),
                      4.heightBox,

                      LabelFields("Occuption", ""),
                      Container(
                          height: 46.h,
                          child: textFormField(
                              IconName: null,
                              HintName: "e.g Teacher",
                              txtController: _OccupationController)

                          // Simpletextfield("e.g Teacher")

                          ),
                      4.heightBox,

                      LabelFields("Location", ""),
                      Container(
                          height: 46.h,
                          child:
                              // Simpletextfield("e.g Manchester")
                              textFormField(
                                  IconName: null,
                                  HintName: "e.g Manchester",
                                  txtController: _LocationController)),

                      ////////////////////////////
                      10.h.heightBox,
                      LabelFields("Add a Picture?", ""),
                      5.h.heightBox,

                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 112.h,
                          width: 106.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: ColorConstants.primaryDarkColor),
                            color: ColorConstants.textFormBackGColor,
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: ColorConstants.primaryDarkColor,
                          ),
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
                                firestore_update("user", currentUserData.uid, {
                                  "userName": _NameController.text.trim(),
                                  "userAge": _AgeController.text.trim(),
                                  "userOccupation": _OccupationController.text.trim(),
                                  "userLocation": _LocationController.text.trim(),
                                  // "userPicture": ,
                                });
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

  // TextFormField Simpletextfield( var hinttxtName,var Controller) {
  //   return TextFormField(
  //     controller: Controller,
  //       decoration: InputDecoration(
  //     // labelText: 'Email',
  //     filled: true,
  //     fillColor: ColorConstants.textFormBackGColor,
  //     enabledBorder: OutlineInputBorder(
  //       borderSide:
  //           BorderSide(color: ColorConstants.primaryDarkColor, width: 3),
  //       borderRadius: BorderRadius.circular(15),
  //     ),
  //     ////////////////////////////////
  //     focusedBorder: OutlineInputBorder(
  //       borderSide:
  //           BorderSide(color: ColorConstants.primaryDarkColor, width: 3),
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     hintText: hinttxtName,
  //     border: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //   ));
  // }
}
