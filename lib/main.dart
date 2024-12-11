import 'package:fligth_log_book/pages/add_log_data.dart';
import 'package:fligth_log_book/pages/edit_log_data.dart';
import 'package:fligth_log_book/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fligth_log_book/config/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Log Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        addLogRoute: (context) => const AddLogData(),
        editLogRoute: (context) => const EditLogData(),
      },
    );
  }
}
