import 'package:dio/dio.dart';

// Declare options
BaseOptions options = new BaseOptions(
  baseUrl: "",
  connectTimeout: 5000,
  receiveTimeout: 15000,
);

// Create HTTP Client
final client = new Dio(options);
