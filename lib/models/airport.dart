import 'package:json_annotation/json_annotation.dart';

part 'airport.g.dart';

@JsonSerializable()
class Airport {
  const Airport({
    required this.id,
    this.iata,
    this.icao,
    this.name,
    this.location,
    this.streetNumber,
    this.street,
    this.city,
    this.county,
    this.state,
    this.countryIso,
    this.country,
    this.postalCode,
    this.phone,
    this.latitude,
    this.longitude,
    required this.uct,
    required this.website,
  });

  factory Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);

  final int id;
  final String? iata;
  final String? icao;
  final String? name;
  final String? location;
  final String? streetNumber;
  final String? street;
  final String? city;
  final String? county;
  final String? state;
  final String? countryIso;
  final String? country;
  final String? postalCode;
  final String? phone;
  final double? latitude;
  final double? longitude;
  final int uct;
  final String website;

  Map<String, dynamic> toJson() => _$AirportToJson(this);
}
