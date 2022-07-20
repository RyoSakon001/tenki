// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      timezone: json['timezone'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      main: json['main'] == null
          ? null
          : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'main': instance.main,
    };

_$_WeatherMain _$$_WeatherMainFromJson(Map<String, dynamic> json) =>
    _$_WeatherMain(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feelsLike'] as num?)?.toDouble(),
      tempMin: (json['tempMin'] as num?)?.toDouble(),
      tempMax: (json['tempMax'] as num?)?.toDouble(),
      pressure: json['pressure'] as int?,
      humidity: json['humidity'] as int?,
    );

Map<String, dynamic> _$$_WeatherMainToJson(_$_WeatherMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
