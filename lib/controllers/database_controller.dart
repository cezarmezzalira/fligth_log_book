import 'package:get/get.dart';
import 'package:fligth_log_book/database/database.dart';
import 'package:fligth_log_book/repositories/log_data_repository.dart';
import 'package:fligth_log_book/models/log_data.dart' as Model;

class DatabaseController extends GetxController
    with StateMixin<List<LogDataData>> {
  DatabaseController({required this.repository}) {
    change([], status: RxStatus.empty());
  }

  final LogDataRepository repository;

  Future<void> getSavedData() async {
    change([], status: RxStatus.loading());
    await repository.getSavedData().then((values) {
      change(values, status: RxStatus.success());
    }).onError((error, stackTrace) {
      change([], status: RxStatus.error(error.toString()));
    });
  }

  Future<void> insertData({Model.LogData? logData}) async {
    await repository.insertData(logData: logData);
    await getSavedData();
  }
}
