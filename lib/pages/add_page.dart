import 'package:fligth_log_book/controllers/database_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:get/get.dart';
import 'package:fligth_log_book/database/database.dart';

import 'package:fligth_log_book/models/log_data.dart' as Model;

class AddLogDataPage extends GetView<DatabaseController> {
  final _formKey = GlobalKey<FormState>();
  final _departureAirportController = TextEditingController();
  final _arrivalAirportController = TextEditingController();
  final _departureDateController = TextEditingController();
  final _arrivalDateController = TextEditingController();
  final _flightNumberController = TextEditingController();
  final _airlineController = TextEditingController();

  final database = AppDatabase();

  _showDatePicker(
      BuildContext context, TextEditingController editingController) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      editingController.text = intl.DateFormat('yyyy-MM-dd').format(pickedDate);
    }
  }

  void _saveLogData(BuildContext context) {
    Get.find<DatabaseController>().insertData(
        logData: Model.LogData(
      departure: _departureAirportController.text,
      arrival: _arrivalAirportController.text,
      flightNumber: _flightNumberController.text,
      airline: _airlineController.text,
      departureDate: DateTime.parse(_departureDateController.text),
      arrivalDate: DateTime.parse(_arrivalDateController.text),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Flight Log Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                controller: _departureAirportController,
                decoration: const InputDecoration(
                  labelText: 'Departure Airport',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Enter Departure Airport',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter departure airport';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _arrivalAirportController,
                decoration: const InputDecoration(
                  labelText: 'Arrival Airport',
                  hintText: 'Enter Arrival Airport',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter arrival airport';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _departureDateController,
                decoration: const InputDecoration(
                  labelText: 'Departure Date',
                  hintText: 'Enter the Departure Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onTap: () => _showDatePicker(context, _departureDateController),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the departure date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _arrivalDateController,
                decoration: const InputDecoration(
                  labelText: 'Arrival Date',
                  hintText: 'Enter the Arrival Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onTap: () => _showDatePicker(context, _arrivalDateController),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the arrival date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _flightNumberController,
                decoration: const InputDecoration(
                  labelText: 'Flight Number',
                  hintText: 'Enter Flight Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter flight number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _airlineController,
                decoration: const InputDecoration(
                  labelText: 'Airline',
                  hintText: 'Enter Airline',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter airline';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: const Size(400, 50),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _saveLogData(context);
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
