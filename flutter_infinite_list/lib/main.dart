import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/beginners/getBuilder.dart';
import 'package:flutter_infinite_list/beginners/secondpage.dart';
import 'package:flutter_infinite_list/beginners/snackpage.dart';
import 'package:get/get.dart';

import 'beginners/getX.dart';
import 'beginners/homepage.dart';

// import 'covid/controller/bindings/controller_bindings.dart';
// import 'covid/view/detail/detail_country_screen.dart';
// import 'covid/view/home/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       getPages: [
//         GetPage(
//           name: '/',
//           page: () => HomeScreen(),
//           binding: ControllerBindings(),
//         ),
//         GetPage(
//           name: '/detail',
//           page: () => DetailCountryScreen(),
//           binding: ControllerBindings(),
//         )
//       ],
//       theme: ThemeData.dark(),
//     );
//   }
// }

//the beginners
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/snackPage',
          page: () => const SnackPage(),
        ),
        GetPage(
          name: '/secondPage',
          page: () => const SecondPage(),
        ),
        GetPage(
          name: '/getBuilder',
          page: () => const GetBuilderPage(),
        ),
        GetPage(
          name: '/getX',
          page: () => const GetXPage(),
        ),
      ],
    );
  }
}
