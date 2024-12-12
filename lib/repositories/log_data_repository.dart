import 'package:fligth_log_book/database/database.dart';
import 'package:fligth_log_book/models/log_data.dart' as Model;
import 'package:get/get.dart';

class LogDataRepositoryImpl implements LogDataRepository {
  @override
  Future<List<LogDataData>> getSavedData() {
    AppDatabase appDatabase = Get.find<AppDatabase>();
    return appDatabase.select(appDatabase.logData).get();
  }

  @override
  Future<int> insertData({Model.LogData? logData}) {
    AppDatabase appDatabase = Get.find<AppDatabase>();
    return appDatabase.into(appDatabase.logData).insert(LogDataCompanion.insert(
          departure: logData!.departure,
          arrival: logData.arrival,
          flightNumber: logData.flightNumber,
          airline: logData.airline,
          departureDate: logData.departureDate,
          arrivalDate: logData.arrivalDate,
        ));
  }
}

abstract class LogDataRepository {
  Future<List<LogDataData>> getSavedData();
  Future<int> insertData({Model.LogData? logData});
}
