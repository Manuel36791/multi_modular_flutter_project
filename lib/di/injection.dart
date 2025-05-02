import 'package:app_settings/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_modular_flutter_project/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String? environment) {
  getIt.init(environment: environment);
  configureAppSettingsInjection(getIt, environment);
}
