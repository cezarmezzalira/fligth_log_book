import 'package:drift/drift.dart';

class LogData extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get departure => text().withLength(min: 3, max: 4)();
  TextColumn get arrival => text().withLength(min: 3, max: 4)();
  DateTimeColumn get departureTime => dateTime()();
  DateTimeColumn get arrivalTime => dateTime()();
  TextColumn get flightNumber => text()();
  TextColumn get airline => text()();
  TextColumn get equipment => text()();
  TextColumn get aircraftRegister => text()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
