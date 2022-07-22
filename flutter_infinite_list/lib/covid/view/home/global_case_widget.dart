import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../controller/global_controller.dart';

class GlobalCaseWidget extends StatelessWidget {
  final GlobalController _globalController = Get.find<GlobalController>();

  GlobalCaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(child: _buildStatisticData()),
          Expanded(child: _buildChart(context)),
        ],
      ),
    );
  }

  Widget _buildStatisticData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 8)),
        _itemConfirmed(),
        const Padding(padding: EdgeInsets.only(top: 8)),
        _itemRecovered(),
        const Padding(padding: EdgeInsets.only(top: 8)),
        _itemDeaths(),
        const Padding(padding: EdgeInsets.only(top: 8)),
      ],
    );
  }

  Widget _buildChart(BuildContext context) {
    return Obx(
      () => PieChart(
        chartType: ChartType.ring,
        dataMap: showChartData(),
        colorList: const [Colors.white, Colors.greenAccent, Colors.redAccent],
        legendOptions: const LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.right,
          showLegends: false,
          legendShape: BoxShape.circle,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: const ChartValuesOptions(
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
          decimalPlaces: 1,
        ),
      ),
    );
  }

  Widget _itemConfirmed() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Confirmed",
          style: TextStyle(fontSize: 18),
        ),
        Obx(
          () => Text(
            _globalController.confirmedTotal.value.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget _itemRecovered() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Recovered",
          style: TextStyle(fontSize: 18),
        ),
        Obx(
          () => Text(
            _globalController.recoveredTotal.value.toString(),
            style: const TextStyle(
              color: Colors.greenAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget _itemDeaths() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Deaths",
          style: TextStyle(fontSize: 18),
        ),
        Obx(
          () => Text(
            _globalController.deathTotal.value.toString(),
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Map<String, double> showChartData() {
    Map<String, double> res = {};
    res.putIfAbsent(
        "Confirmed", () => _globalController.confirmedTotal.value.toDouble());
    res.putIfAbsent(
        "Recovered", () => _globalController.recoveredTotal.value.toDouble());
    res.putIfAbsent(
        "Deaths", () => _globalController.deathTotal.value.toDouble());
    return res;
  }
}
