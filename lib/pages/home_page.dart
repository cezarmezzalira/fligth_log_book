import 'package:fligth_log_book/database/database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _listItens = [];
  final database = AppDatabase();

  @override
  void initState() {
    super.initState();
    readDB();
  }

  void readDB() async {
    List<LogDataData> allItems = await database.select(database.logData).get();
    _listItens = allItems
        .map(
          (log) => ListTile(
              leading: const Icon(
                Icons.flight,
                size: 40,
              ),
              title: Text(
                  "${log.departureDate.toString()} - ${log.arrivalDate.toString()}"),
              subtitle:
                  Text('Departure: ${log.departure}, Arrival: ${log.arrival}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {}),
        )
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Log Book'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: buildItem,
            separatorBuilder: (context, index) => const Divider(
                  height: 1,
                ),
            itemCount: _listItens.length),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) => _listItens[index];
}
