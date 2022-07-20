import 'package:tenki/service/weather_api_client.dart';

// ⑤
class Repository {
  final _api = WeatherApiClient();
  dynamic fetchWeather(String? location) async => _api.fetchWeather(location);
}
