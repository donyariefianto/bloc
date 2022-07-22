import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/beginners/secondpage.dart';
import 'package:flutter_infinite_list/beginners/snackpage.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('GetX'),
      ),
      body: Column(
        children: <Widget>[
          GridView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.4),
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(
                    const SnackPage(),
                  );
                },
                child: Container(
                  height: 100,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.indigo[800],
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Text(
                    'Snackbar,dialog and Bottom sheet',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const SecondPage(), arguments: 'hello');
                },
                child: Container(
                  height: 100,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.teal[900],
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Text(
                    'Navigation | Send data to other screen',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(const SecondPage(), arguments: 'hello');
                  Get.toNamed('/getBuilder');
                },
                child: Container(
                  height: 100,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.orange[900],
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Text(
                    'State Management | GetBuilder',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/getX');
                },
                child: Container(
                  height: 100,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: const Color.fromARGB(255, 30, 67, 86),
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Text(
                    'State Management | GetX & Obx',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
