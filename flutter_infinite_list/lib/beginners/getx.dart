import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/beginners/controller/countcontroller.dart';
import 'package:flutter_infinite_list/beginners/controller/valuecontroller.dart';
import 'package:get/get.dart';

class GetXPage extends StatelessWidget {
  const GetXPage({Key? key}) : super(key: key);
  // CountController controller = Get.put(CountController());
  // const GetBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counting getX'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              GetX<ValueController>(
                init: ValueController(),
                builder: (_) {
                  return Text(
                    'This is value 1 : ${_.valueModel.value.value1}',
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
              Obx(
                () => Text(
                  'This is value 2 : ${Get.find<ValueController>().valueModel.value.value2}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<ValueController>()
                      .updateTheValue('newValue1', 'newValue2');
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Text(
                  'Change the value',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
