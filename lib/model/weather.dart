import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.freezed.dart';
part 'weather.g.dart';

// シンプルに、「Weatherクラス、WeatherMainクラス」を作るが、このインスタンスに対し、
// さまざまな処理ができるようにしたSuperクラスを作り、それを継承させるのがfreezed。
// withは、他にも自動生成クラスを継承する可能性があるため。

// mutable（可変）から、immutable（不変）にしてくれる　＝　Freezed
// immutableの方が、保守性が高い

// ④
@freezed
class Weather with _$Weather {
  // Factoryコンストラクタを使う理由は、
  factory Weather({
    int? timezone,
    int? id,
    String? name,
    WeatherMain? main,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
  }) = _WeatherMain;
  factory WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFromJson(json);
}
