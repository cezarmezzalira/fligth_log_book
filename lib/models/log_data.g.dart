// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogData _$LogDataFromJson(Map<String, dynamic> json) => LogData(
      departure: json['departure'] as String,
      arrival: json['arrival'] as String,
      flightNumber: json['flightNumber'] as String,
      airline: json['airline'] as String,
      departureDate: DateTime.parse(json['departureDate'] as String),
      arrivalDate: DateTime.parse(json['arrivalDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LogDataToJson(LogData instance) => <String, dynamic>{
      'departure': instance.departure,
      'arrival': instance.arrival,
      'flightNumber': instance.flightNumber,
      'airline': instance.airline,
      'departureDate': instance.departureDate.toIso8601String(),
      'arrivalDate': instance.arrivalDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
