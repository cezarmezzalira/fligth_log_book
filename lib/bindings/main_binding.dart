import 'package:fligth_log_book/controllers/database_controller.dart';
import 'package:fligth_log_book/database/database.dart';
import 'package:fligth_log_book/repositories/log_data_repository.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDatabase());
    Get.put(DatabaseController(repository: LogDataRepositoryImpl()));
  }
}
