
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../common/global.dart';
import '../config/api_config/api_urls.dart';
import 'exceptions.dart';

class ApiServices {
  static final _dio = Global.dio;
  static const Duration _timeOutDuration = Duration(seconds: 60);

  Future register(
      {name, username, email, phone, password}) async {
    final endPoint = ApiUrl
        .registerUrl; //dotenv.env['REGISTER_ENDPOINT'] ?? 'API_URL not found';
    final header = {'Accept': 'application/json'};
    Map<String, dynamic> data = {
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'password': password,
    };
    Response response;

    try {
      response = await _dio
          .post(endPoint, data: data, options: Options(headers: header))
          .timeout(_timeOutDuration);

      if (response.statusCode == 200) {
      } else {
        ////debugPrint(response.statusMessage.toString());
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      if (e.response != null) {
        print('DioError: ${e.response?.statusCode}');
        print('DioError: ${e.response?.statusMessage}');
        print('DioError: ${e.response?.data}');
      } else {
        print('DioError: $e');
      }

      final errorMessage = DioExceptions.fromDioError(e).toString();
      print('Error Message: $errorMessage');
      return errorMessage;
    }
  }


  Future<String?> fetchPlaceAutocomplete(Uri uri, {Map<String, String>? headers}) async {
    try {
      final Response response = await _dio.get(
        uri.toString(), // Pass the URI directly to _dio.get()
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        return response.data.toString();
      }
    } catch (e) {
      debugPrint('Error fetching place autocomplete: $e');
    }
    return null;
  }




  Future<dynamic> login({username, password}) async {
    final endPoint = ApiUrl.loginUrl;
    final header = {'Accept': 'application/json'};
    Map<String, dynamic> data = {
      'username': username,
      'password': password,
    };

    try {
      Response response = await _dio
          .post(endPoint, data: data, options: Options(headers: header))
          .timeout(_timeOutDuration);

      if (response.statusCode == 200) {
        final body = response.data;
        //return LoginModel.fromJson(body);
      } else {
        print('Unexpected response status: ${response.statusMessage}');
        print('Full response: ${response.toString()}');
        return response.statusCode.toString();
      }
    } on DioError catch (e) {
      if (e.response != null) {
        print('DioError: ${e.response?.statusCode}');
        print('DioError: ${e.response?.statusMessage}');
        print('DioError: ${e.response?.data}');
      } else {
        print('DioError: $e');
      }

      final errorMessage = DioExceptions.fromDioError(e).toString();
      print('Error Message: $errorMessage');
      return errorMessage;
    }
  }

}