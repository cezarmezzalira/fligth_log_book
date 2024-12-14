import 'package:fligth_log_book/controllers/details_controller.dart';
import 'package:fligth_log_book/database/database.dart';
import 'package:fligth_log_book/widgets/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

class DetailsLogData extends GetView<DetailsController> {
  const DetailsLogData({super.key, required this.logData});

  final LogDataData? logData;

  @override
  Widget build(BuildContext context) {
    // function getAirportsDetails() {}
    var airportsDetails = Future.wait([
      Get.find<DetailsController>().getAirport(logData?.departure ?? ""),
      Get.find<DetailsController>().getAirport(logData?.arrival ?? "")
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flight Log Data Details"),
      ),
      body: FutureBuilder(
        future: airportsDetails,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            var [airportDepartureDetails, airportArrivalDetails] =
                snapshot.data ?? [];
            var departureLat = airportDepartureDetails?.latitude;
            var arrivalLat = airportArrivalDetails?.latitude;
            var departureLong = airportDepartureDetails?.longitude;
            var arrivalLong = airportArrivalDetails?.longitude;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.flight_takeoff,
                      size: 40,
                    ),
                    title: Text(
                        "Departure from ${logData?.departure} - ${airportDepartureDetails?.location} at ${intl.DateFormat('dd/MM/yyyy').format(logData?.departureDate ?? DateTime.now())} "),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.flight_land,
                      size: 40,
                    ),
                    title: Text(
                        "Arrival to ${logData?.arrival} - ${airportArrivalDetails?.location} at ${intl.DateFormat('dd/MM/yyyy').format(logData?.departureDate ?? DateTime.now())} "),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.flight,
                      size: 40,
                    ),
                    title: Text("Flight Number: ${logData?.flightNumber}"),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.airlines,
                      size: 40,
                    ),
                    title: Text("Airline: ${logData?.airline}"),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 300,
                    color: Colors.white,
                    padding: const EdgeInsets.all(5.0),
                    child: MapLocation(coordinates: [
                      {"lat": departureLat, "lon": departureLong},
                      {"lat": arrivalLat, "lon": arrivalLong}
                    ]),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
