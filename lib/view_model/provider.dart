import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tenki/model/weather.dart';
import 'package:tenki/repository/repository.dart';

// ⑥
final cityNameProvider = StateProvider(
  (ref) => 'Tokyo',
);

final repositoryProvider = Provider(
  (ref) => Repository(),
);

final dataProvider = FutureProvider.autoDispose<Weather>((ref) async {
  final repository = ref.read(repositoryProvider);
  final cityName = ref.watch(cityNameProvider.notifier);
  return await repository.fetchWeather(cityName.state);
});
