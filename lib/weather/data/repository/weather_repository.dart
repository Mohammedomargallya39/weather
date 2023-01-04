import 'package:wheather/weather/data/data_source/remote_data_source.dart';
import 'package:wheather/weather/domain/entities/weather.dart';
import 'package:wheather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository
{
  final BaseRemoteDateSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
     return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }

}