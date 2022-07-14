import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/app.dart';
import 'package:flutter_infinite_list/simple_bloc_observer.dart';

import 'covid/bloc/covid_bloc.dart';
import 'covid/data/repository/api_repository.dart';
import 'covid/service/data_service.dart';
import 'covid/view/covid_page.dart';

// void main() {
//   BlocOverrides.runZoned(
//     () => runApp(App()),
//     blocObserver: SimpleBlocObserver(),
//   );
// }

void main() {
  runApp(MyApp(
    dataService: DataService(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.dataService}) : super(key: key);
  final DataService dataService;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc Api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) =>
            PostBloc(apiRepository: ApiRepository(dataService: dataService))
              ..add(LoadEvent()),
        child: const HomeScreen(),
      ),
    );
  }
}
