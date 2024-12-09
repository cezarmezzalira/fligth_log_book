import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Log Book'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: const Icon(
                  Icons.flight,
                  size: 40,
                ),
                title: const Text('Dec, 31, 2023'),
                subtitle: const Text('Departure: PTO, Arrival: JFK'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
