import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/beginners/homepage.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Successfully navigated to new screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.offAll(const HomePage());
                  Get.offAllNamed('/');
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Text(
                  'Go back',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                Get.arguments.toString(),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
