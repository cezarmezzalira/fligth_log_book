import 'package:fligth_log_book/controllers/details_controller.dart';
import 'package:fligth_log_book/controllers/database_controller.dart';
import 'package:fligth_log_book/database/database.dart';
import 'package:fligth_log_book/remote/rest_client.dart';
import 'package:fligth_log_book/repositories/airport_repository.dart';
import 'package:fligth_log_book/repositories/log_data_repository.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDatabase());
    Get.put(AirportRestClient(Dio()));
    Get.put(DatabaseController(repository: LogDataRepositoryImpl()));
    Get.put(DetailsController(
        repository: LogDataRepositoryImpl(),
        restRepository: AirportRepositoryImpl()));
  }
}
