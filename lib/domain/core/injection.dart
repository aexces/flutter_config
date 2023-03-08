import 'package:flutter_config/domain/core/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  // final sharedPref = await SharedPreferences.getInstance();
  // getIt.registerSingleton<SharedPreferences>(sharedPref);
  // getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions()));
  getIt.init(environment: env);
}
