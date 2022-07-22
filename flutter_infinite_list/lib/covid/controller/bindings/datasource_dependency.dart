import 'package:get/get.dart';

import '../../network/source.dart';

void bindingCovidDataSource() => Get.lazyPut<CovidDataSource>(
      () => CovidDataSource(),
    );
