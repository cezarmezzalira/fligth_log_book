import 'package:json_annotation/json_annotation.dart';

part 'log_data.g.dart';

@JsonSerializable()
class LogData {
  LogData(
      {required this.departure,
      required this.arrival,
      required this.flightNumber,
      required this.airline,
      required this.departureDate,
      required this.arrivalDate,
      required this.createdAt,
      required this.updatedAt});

  factory LogData.fromJson(Map<String, dynamic> json) =>
      _$LogDataFromJson(json);

  final String departure;
  final String arrival;
  final String flightNumber;
  final String airline;
  final DateTime departureDate;
  final DateTime arrivalDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$LogDataToJson(this);
}
