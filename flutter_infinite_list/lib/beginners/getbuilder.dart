// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/beginners/controller/countcontroller.dart';
import 'package:get/get.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({Key? key}) : super(key: key);
  // CountController controller = Get.put(CountController());
  // const GetBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counting get builder'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              GetBuilder<CountController>(
                init: CountController(),
                builder: (controller) {
                  return Text("Count Value is ${controller.count}");
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // controller.increment();
                  Get.find<CountController>().increment();
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Text(
                  'increment the value',
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
