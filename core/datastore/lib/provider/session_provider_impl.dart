import 'package:injectable/injectable.dart';

import 'session_provider.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl implements SessionProvider {
  @override
  String getAccessToken() {
    return "Access token from user session API";
  }

  @override
  String getClientId() {
    return "112233445566778899";
  }

  @override
  String getRefreshToken() {
   return "Refresh token from user session API";
  }

  @override
  String getUserId() {
    return "123456789";
  }
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl implements SessionProvider {
  @override
  String getAccessToken() {
    return "Access token from user session API";
  }

  @override
  String getClientId() {
    return "998877665544332211";
  }

  @override
  String getRefreshToken() {
    return "Refresh token from user session API";
  }

  @override
  String getUserId() {
    return "987654321";
  }
}