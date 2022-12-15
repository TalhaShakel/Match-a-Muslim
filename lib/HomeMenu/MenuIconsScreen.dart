import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Controllers/Maincontrollers.dart';
import 'package:dating_app/HomeMenu/ChatScreen.dart';
import 'package:dating_app/HomeMenu/MainSearchScreen.dart';
import 'package:dating_app/HomeMenu/MyProfileScreen.dart';
import 'package:dating_app/HomeMenu/MyRequestScreen.dart';
import 'package:dating_app/HomeMenu/homeMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  var controller = Get.put(MainController());

  // int _selectIndex = 0;
  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        ///////////////////////////////////////////////////
        body: controller.page[controller.index],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                  onTap: () {
                    controller.pages(0);
                  },
                  child: Container(
                    child: Image.asset("assets/images/Vector (1).png"),
                  )
                  //  Icon(
                  //  Image.asset(name)
                  //   // color: Color(0xff08296c),
                  //   color: ColorConstants.primaryDarkColor,
                  // ),
                  ),
              // label: 'DashBoard',
            ),
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(1);
                },
                child:
                    Image.asset("assets/images/clipboard-search-outline 1.png"),
              ),
              // label: 'Setting',
            ),
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(2);
                },
                child: Image.asset("assets/images/Vector.png"),
              ),
              // label: 'Setting',
            ),
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(3);
                },
                child: Image.asset("assets/images/Vector (2).png"),
              ),
              // label: 'Setting',
            ),
            /////////////////////////////////////
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(4);
                },
                child: Image.asset("assets/images/Vector (3).png"),
              ),
              // label: 'My Profile',
            ),
            ///////////////////////////////////
          ],
          currentIndex: controller.index,
          selectedItemColor: ColorConstants.textFormBackGColor,
          // onTap: Get.find(),
        ),
      );
    });
  }
}
