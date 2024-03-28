import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../consts/current_environment.dart';

class ApiUrl {
  static final ApiUrl instance = ApiUrl._private();

  ApiUrl._private();

  factory ApiUrl() => instance;

  /// Use this to quickly between environments.
  ///
  /// NOTE: This flag is REALLY IMPORTANT and determines if calls are made to the
  /// "development" or "production" endpoints
  static CurrentEnvironmentEnum _currentEnvironment =
      CurrentEnvironmentEnum.prod;

  static CurrentEnvironmentEnum get currentEnvironment => _currentEnvironment;

  ///Creates a setter function for [_currentEnvironment].
  static void setCurrentEnvironment({
    required CurrentEnvironmentEnum currentEnvironmentEnum,
  }) {
    _currentEnvironment = currentEnvironmentEnum;
  }

  static final String _baseUrl =
  dotenv.get('APP_${_currentEnvironment.value}_URL', fallback: "");

  ///------------ GENERAL AUTH SERVICE URLS ------------///

  /// API for creating a new user's account
  static String registerUrl = '${_baseUrl}example/signup';

  /// API for logging into the app
  static String loginUrl = '${_baseUrl}example/login';

///------------------------ AUTH ENDS ------------------------///

///------------------------ RETAILER ------------------------///

}
