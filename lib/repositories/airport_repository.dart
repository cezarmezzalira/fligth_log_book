import 'package:fligth_log_book/models/airport.dart';
import 'package:fligth_log_book/remote/rest_client.dart';
import 'package:get/get.dart';

class AirportRepositoryImpl implements AirportRepository {
  @override
  Future<Airport> getAirportData(String iataCode) async {
    var restClient = Get.find<AirportRestClient>();
    return restClient.getAirport(iataCode);
  }
}

abstract class AirportRepository {
  Future<Airport> getAirportData(String iataCode);
}
