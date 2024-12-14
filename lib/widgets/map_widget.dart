import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocation extends StatelessWidget {
  MapLocation({super.key, required this.coordinates});

  final List<Map<String, double?>> coordinates;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    var [departureLocation, arrivalLocation] = coordinates;
    var bounds = LatLngBounds(
      southwest:
          LatLng(departureLocation["lat"] ?? 0, departureLocation["lon"] ?? 0),
      northeast:
          LatLng(arrivalLocation["lat"] ?? 0, arrivalLocation["lon"] ?? 0),
    );
    CameraPosition initialCameraPosition = CameraPosition(
      target:
          LatLng(departureLocation["lat"] ?? 0, departureLocation["lon"] ?? 0),
      zoom: 14.4746,
    );

    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: initialCameraPosition,
        markers: {
          Marker(
            markerId: const MarkerId("1"),
            position: LatLng(
                departureLocation["lat"] ?? 0, departureLocation["lon"] ?? 0),
            infoWindow: InfoWindow(
              title: "Departure Location",
              snippet:
                  "Lat: ${departureLocation["lat"]}, Lon: ${departureLocation["lon"]}",
            ),
          ),
          Marker(
            markerId: const MarkerId("1"),
            position: LatLng(
                arrivalLocation["lat"] ?? 0, arrivalLocation["lon"] ?? 0),
            infoWindow: InfoWindow(
              title: "Arrival Location",
              snippet:
                  "Lat: ${arrivalLocation["lat"]}, Lon: ${arrivalLocation["lon"]}",
            ),
          )
        },
        polylines: {
          Polyline(
            polylineId: const PolylineId("1"),
            points: [
              LatLng(
                  departureLocation["lat"] ?? 0, departureLocation["lon"] ?? 0),
              LatLng(arrivalLocation["lat"] ?? 0, arrivalLocation["lon"] ?? 0),
            ],
            width: 5,
            color: Colors.blue,
          ),
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          controller.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100));
        },
      ),
    );
  }
}
