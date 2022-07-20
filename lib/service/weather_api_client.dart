import 'package:dio/dio.dart';
import 'package:tenki/model/weather.dart';

// ③
class WeatherApiClient {
  Future<Weather?> fetchWeather(String? location) async {
    final dio = Dio();
    const appId = '4b0e4756a7f3015c0d08c2f0263c224a&units=metric';
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$appId';

    var response = await dio.get(url); // urlにGETリクエストを送る
    if (response.statusCode == 200) {
      try {
        return Weather.fromJson(response.data); // レスポンスデータをJson形式で返す
      } catch (e) {
        print(e);
        rethrow;
        // throw e;
      }
    }
    return null;
  }
}
