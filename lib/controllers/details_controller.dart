import 'package:fligth_log_book/database/database.dart';
import 'package:fligth_log_book/models/airport.dart';
import 'package:fligth_log_book/remote/rest_client.dart';
import 'package:fligth_log_book/repositories/airport_repository.dart';
import 'package:fligth_log_book/repositories/log_data_repository.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  DetailsController({required this.repository, required this.restRepository}) {}

  final LogDataRepository repository;
  final AirportRepository restRepository;

  Future<LogDataData?> getLogDataById(int id) async {
    return repository.getLogDataById(id);
  }

  Future<Airport> getAirport(String airportCode) async {
    return restRepository.getAirportData(airportCode).then((airport) {
      return airport;
    });
  }
}
