// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Airport _$AirportFromJson(Map<String, dynamic> json) => Airport(
      id: (json['id'] as num).toInt(),
      iata: json['iata'] as String?,
      icao: json['icao'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      streetNumber: json['streetNumber'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      county: json['county'] as String?,
      state: json['state'] as String?,
      countryIso: json['countryIso'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
      phone: json['phone'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      uct: (json['uct'] as num).toInt(),
      website: json['website'] as String,
    );

Map<String, dynamic> _$AirportToJson(Airport instance) => <String, dynamic>{
      'id': instance.id,
      'iata': instance.iata,
      'icao': instance.icao,
      'name': instance.name,
      'location': instance.location,
      'streetNumber': instance.streetNumber,
      'street': instance.street,
      'city': instance.city,
      'county': instance.county,
      'state': instance.state,
      'countryIso': instance.countryIso,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'phone': instance.phone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'uct': instance.uct,
      'website': instance.website,
    };
