import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:wheather/core/utils/constants.dart';
import 'package:wheather/weather/data/model/weather_model.dart';

abstract class BaseRemoteDateSource{
   Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDateSource
{
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async{
    try{
      var response = await Dio().get(AppConstance.url);
      if (kDebugMode) {
        print(response);
      }
      return WeatherModel.fromJson(response.data);
    }catch (error)
    {
      if (kDebugMode) {
        print(error);
        return null;
      }
    }
    return null;
  }

}