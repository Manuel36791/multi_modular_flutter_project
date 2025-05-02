import 'package:injectable/injectable.dart';

import 'app_settings_provider.dart';

@Injectable(as: AppSettingsProvider, env: [Environment.prod])
class ProdAppSettingsProviderImpl implements AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "en";
  }

  @override
  String getThemeType() {
    return "dark";
  }
}

@Injectable(as: AppSettingsProvider, env: [Environment.dev])
class DevAppSettingsProviderImpl implements AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "ar";
  }

  @override
  String getThemeType() {
    return "light";
  }
}