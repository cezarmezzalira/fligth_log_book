import 'package:fligth_log_book/remote/rest_client.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _iataTextController = TextEditingController();
  final AirportRestClient _restClient = AirportRestClient(Dio());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Informe o código do Aeroporto:',
            ),
            TextField(
              controller: _iataTextController,
              maxLength: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Aeroporto',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _restClient
                      .getAirport(_iataTextController.text)
                      .then((result) => print(result.name))
                      .catchError((obj) => print(obj));
                },
                child: Text('Buscar')),
          ],
        ),
      ),
    );
  }
}
