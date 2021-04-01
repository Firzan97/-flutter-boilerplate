import 'package:dio/dio.dart';

// API Methods
enum ApiMethod { Get, Post, Put, Delete }

// API Options
class ApiOptions {
  ApiOptions({
    this.data,
    this.queryParameters,
    this.options,
    this.auth = true,
  }) {
    if (this.auth) {
      // Append bearer token to Authorization header
      // String token = jwt.value;
      // this.options.headers["Authorization"] = "Bearer $token";
    }
  }

  final dynamic data;
  final Map<String, dynamic> queryParameters;
  final Options options;
  final bool auth;
}

// API Response
class ApiResponse {
  ApiResponse({this.error = 0, this.message = "Success", this.data});

  ApiResponse.fromJson(Map<String, dynamic> json)
      : error = json['error'],
        data = json.containsKey("data") ? json['data'] : {},
        message = json['message'];

  int error;
  String message;
  dynamic data;

  get isOk {
    return error == 0;
  }
}

// Login Response
class LoginResponse {
  String token;
  // User user;

  LoginResponse.fromJson(Map<String, dynamic> json) {
    token = json["token"];
    // user = User.fromJson(json["user"]);
  }
}
