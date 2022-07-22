import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0;
  increment() {
    count = count + 1;
    update();
  }
}
