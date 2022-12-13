import 'package:get/get.dart';

class MainController extends GetxController {
  @override
  var index = 0;
  pages(index1) {
    index = index1;
    refresh();
  }
}
