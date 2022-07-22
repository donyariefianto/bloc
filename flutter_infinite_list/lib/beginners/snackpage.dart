import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackPage extends StatelessWidget {
  const SnackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('SnackBar, Dialog and Bottom Sheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: <Widget>[
            MaterialButton(
              minWidth: double.maxFinite,
              color: Colors.green[500],
              onPressed: () {
                Get.snackbar(
                  'Great Snackbar',
                  'Snackbar done in one line',
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  backgroundColor: Colors.grey[900],
                );
              },
            ),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.blue[500],
              onPressed: () {
                Get.defaultDialog(
                    title: "Easy Dialog",
                    content: Column(
                      children: const [
                        Text('This is Amazing'),
                        Text('This is Amazing'),
                      ],
                    ));
              },
            ),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.indigo[800],
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 100,
                    color: Colors.white,
                    child: const Text('Getx'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
