import 'package:fligth_log_book/database/database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class AddLogData extends StatefulWidget {
  const AddLogData({super.key});

  @override
  State<AddLogData> createState() => _AddLogDataState();
}

class _AddLogDataState extends State<AddLogData> {
  final _formKey = GlobalKey<FormState>();
  final _departureAirportController = TextEditingController();
  final _arrivalAirportController = TextEditingController();
  final _departureDateController = TextEditingController();
  final _arrivalDateController = TextEditingController();
  final _flightNumberController = TextEditingController();
  final _airlineController = TextEditingController();

  final database = AppDatabase();

  _showDatePicker(TextEditingController editingController) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        editingController.text =
            intl.DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  void _saveLogData() {
    database.into(database.logData).insert(LogDataCompanion.insert(
        departure: _departureAirportController.text,
        arrival: _arrivalAirportController.text,
        flightNumber: _flightNumberController.text,
        airline: _airlineController.text,
        departureDate: DateTime.parse(_departureDateController.text),
        arrivalDate: DateTime.parse(_arrivalDateController.text)));
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                controller: _departureAirportController,
                decoration: const InputDecoration(
                  labelText: 'Departure Airport',
                  hintText: 'Enter Departure Airport',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter departure airport';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _arrivalAirportController,
                decoration: const InputDecoration(
                  labelText: 'Arrival Airport',
                  hintText: 'Enter Arrival Airport',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter arrival airport';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _departureDateController,
                decoration: const InputDecoration(
                  labelText: 'Departure Date',
                  hintText: 'Enter the Departure Date',
                ),
                onTap: () => _showDatePicker(_departureDateController),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the departure date';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _arrivalDateController,
                decoration: const InputDecoration(
                  labelText: 'Arrival Date',
                  hintText: 'Enter the Arrival Date',
                ),
                onTap: () => _showDatePicker(_arrivalDateController),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the arrival date';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _flightNumberController,
                decoration: const InputDecoration(
                  labelText: 'Flight Number',
                  hintText: 'Enter Flight Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter flight number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _airlineController,
                decoration: const InputDecoration(
                  labelText: 'Airline',
                  hintText: 'Enter Airline',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter airline';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _saveLogData();
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
