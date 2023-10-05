import 'dart:convert';

import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';
import '../../model/ipgeolocation/api_geolocation.dart';
import '../../service/wrapper/i_service_wrapper.dart';
import '../../constants/config.dart';

abstract interface class IGeoRepository {
  abstract final GeoServiceWrapper wrapper;

  Future<ApiGeoLocation> getGeoData();
}

class GeoRepository implements IGeoRepository {
  GeoRepository() : wrapper = GeoServiceWrapper(dio: _dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: Config.geoBaseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
  ));

  @override
  final GeoServiceWrapper wrapper;

  @override
  Future<ApiGeoLocation> getGeoData() async {
    String response = await wrapper.request(
      ApiConst.geoPath,
      queryParameters: ApiConst.geoParams(Config.geoApiKey),
    );
    return ApiGeoLocation.fromJson(jsonDecode(response));
  }
}
