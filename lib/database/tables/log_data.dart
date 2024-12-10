import 'package:drift/drift.dart';

class LogData extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get departure => text().withLength(min: 3, max: 4)();
  TextColumn get arrival => text().withLength(min: 3, max: 4)();
  TextColumn get flightNumber => text()();
  TextColumn get airline => text()();
  DateTimeColumn get departureDate => dateTime()();
  DateTimeColumn get arrivalDate => dateTime()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
