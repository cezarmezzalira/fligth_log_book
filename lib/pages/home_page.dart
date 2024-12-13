import 'package:fligth_log_book/config/routes.dart';
import 'package:fligth_log_book/controllers/database_controller.dart';
import 'package:fligth_log_book/pages/details_log_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:get/get.dart';

class HomePage extends GetView<DatabaseController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getSavedData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Log Book'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: controller.obx((state) {
          return ListView.builder(
            itemCount: state?.length,
            itemBuilder: (context, index) {
              final data = state?[index];
              var departureDate = data?.departureDate ?? DateTime.now();
              var arrivalDate = data?.arrivalDate ?? DateTime.now();
              var title =
                  "${intl.DateFormat('dd/MM/yyyy').format(departureDate)} - ${intl.DateFormat('dd/MM/yyyy').format(arrivalDate)}";
              return ListTile(
                  leading: const Icon(
                    Icons.flight,
                    size: 40,
                  ),
                  title: Text(title),
                  subtitle: Text(
                      'Departure: ${data?.departure}, Arrival: ${data?.arrival}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsLogData(logData: data),
                      ),
                    );
                  });
            },
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: 'Increment',
        onPressed: () {
          Navigator.pushNamed(context, addLogRoute);
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
