import 'package:dio/dio.dart' hide Headers;
import 'package:fligth_log_book/environment.dart';
import 'package:fligth_log_book/models/airport.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://airport-info.p.rapidapi.com')
abstract class AirportRestClient {
  factory AirportRestClient(Dio dio, {String baseUrl}) = _AirportRestClient;
  @GET("/airport")
  @Headers(<String, dynamic>{
    "x-rapidapi-host": Environment.rapidApiHost,
    "x-rapidapi-key": Environment.rapidApiKey
  })
  Future<Airport> getAirport(@Query("iata") String airportCode);
}
