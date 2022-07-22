import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../controller/global_controller.dart';
import '../commons/common_general_case_widget.dart';

class DetailCountryScreen extends StatelessWidget {
  final GlobalController _globalController = Get.find<GlobalController>();

  DetailCountryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${_globalController.selectedCountries.value} Case Detail"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _buildChart(),
            const Padding(padding: EdgeInsets.only(top: 16)),
            CommonGeneralCaseWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildChart() {
    return Obx(
      () => PieChart(
        chartType: ChartType.ring,
        dataMap: showChartData(),
        colorList: const [Colors.white, Colors.greenAccent, Colors.redAccent],
      ),
    );
  }

  Map<String, double> showChartData() {
    Map<String, double> res = {};
    res.putIfAbsent("Confirmed",
        () => _globalController.countryDetailConfirmed.value.toDouble());
    res.putIfAbsent("Recovered",
        () => _globalController.countryDetailRecovered.value.toDouble());
    res.putIfAbsent(
        "Deaths", () => _globalController.countryDetailDeaths.value.toDouble());
    return res;
  }
}
