import 'package:dating_app/Constant/ColorConstant.dart';
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

  int _selectIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeMenuScreen(),
    MyRequestScreen(),
    MainSearchScreen(),
    ChatScreen(),
    MyProfileScreen()
  ];

  

  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    return Scaffold(
      ///////////////////////////////////////////////////
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Color(0xff08296c),
              color: ColorConstants.primaryDarkColor,
            ),
            // label: 'DashBoard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: ColorConstants.primaryDarkColor,
            ),
            // label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: ColorConstants.primaryDarkColor,
            ),
            // label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: ColorConstants.primaryDarkColor,
            ),
            // label: 'Setting',
          ),
          /////////////////////////////////////
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: ColorConstants.primaryDarkColor,
            ),
            // label: 'My Profile',
          ),
          ///////////////////////////////////
        ],
        currentIndex: _selectIndex,
        selectedItemColor: ColorConstants.textFormBackGColor,
        // onTap: Get.find(),
      ),
    );
  }
}

class CountController extends GetxController {
  final _selectedIndex = 0.obs;

  void _onItemTapped(int index, _selectIndex) {
    _selectIndex = index;
  }
}
