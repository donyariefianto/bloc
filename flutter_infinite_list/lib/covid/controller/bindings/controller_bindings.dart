import 'package:get/get.dart';

import 'controller_dependency.dart';
import 'datasource_dependency.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    bindingCovidDataSource();
    bindingGlobalController();
  }
}
