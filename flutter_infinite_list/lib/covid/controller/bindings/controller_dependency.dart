import 'package:get/get.dart';

import '../../network/source.dart';
import '../global_controller.dart';

void bindingGlobalController() => Get.lazyPut<GlobalController>(
      () => GlobalController(
        covidDataSource: Get.find<CovidDataSource>(),
      ),
    );
