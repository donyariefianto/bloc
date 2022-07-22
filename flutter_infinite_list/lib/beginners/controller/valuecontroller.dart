import 'package:get/get.dart';

import '../models/valuemodel.dart';

class ValueController extends GetxController {
  final valueModel = ValueModel().obs;
  updateTheValue(String newValue1, String newValue2) {
    valueModel.update((val) {
      val!.value1 = newValue1;
      val!.value2 = newValue2;
    });
  }
}
