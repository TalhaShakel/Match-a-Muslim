import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class textFormField extends StatelessWidget {
  var IconName;
  var HintName;
  textFormField({super.key, required this.IconName, required this.HintName});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      suffixIcon: Icon(IconName),
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
      hintText: HintName,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ));
  }
}
