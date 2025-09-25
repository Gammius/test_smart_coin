import 'package:get_it/get_it.dart';
import 'package:test_smart_coin/data/network/base_api.dart';
import '../data/repository/weather_repository.dart';
import '../domain/weather_interactor.dart';
import '../presentation/provider/weather_provider.dart';
import 'data/network/weather_api.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => BaseApi());
  getIt.registerLazySingleton(() => WeatherApi(getIt<BaseApi>()));
  getIt.registerLazySingleton(() => WeatherRepository(getIt<WeatherApi>()));
  getIt.registerLazySingleton(() => WeatherInteractor(getIt<WeatherRepository>()));
  getIt.registerFactory(() => WeatherProvider(getIt<WeatherInteractor>()));
}
