import '../../../styles/app_icons.dart';

import '../../../model/weather_model/weather_model.dart';
import '../../../pages/data/geo_repository.dart';
import '../../../pages/data/weather_repository.dart';
import '../../../utils/custom_exceptions.dart';

import '../../model/ipgeolocation/api_geolocation.dart';

class MainController {
  MainController({
    required this.geoRepository,
    required this.weatherRepository,
  });

  final IGeoRepository geoRepository;
  final IWeatherRepository weatherRepository;

  WeatherModel? weatherModel;
  ApiGeoLocation? geoLocation;

  bool get isProgress => weatherModel == null && geoLocation == null;

  Future<void> getWeatherData() async {
    try {
      geoLocation = await geoRepository.getGeoData();
      weatherModel =
          await weatherRepository.getWeatherData(geoLocation?.city ?? "");

      print(weatherModel);
    } on UnknownExeption catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on ClientExeption catch (error, stacTrace) {
      print(error);
      print(stacTrace);
    } on ServerExeption catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on Object catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
  }
  List<String> get listHour =>
      weatherModel?.days[0].hours
          .map((e) => e.datetime)
          .cast<String>()
          .toList() ??
          [];

  String weatherInInfoSingleWorld() {
    String info = weatherModel?.currentConditions?.icon ?? "";
    String res = "Showery";
    switch (info) {
      case "clear-day" || "clear-night":
        res = "Sunny";
      case "rain":
        res = "Rainy";
      case "snow":
        res = "Snowy";
      case "partly-clody-day" || "clady" || "partly-clody-night":
        res = "Clody";
      default:
    }
    return res;
  }
}
//   String weatherInIcon(String info){
//   String res = AppIcons.icCloudyRainSun;
//    switch (info){
//      case "clear-day":
//      res = AppIcons.icSun;
//      case "rain":
//        res = AppIcons.icCloudyRain;
//      case "snow":
//        res = AppIcons.icCloudy;
//      case "clody" || "partly-cloudy-night" || "clear-night":
//        res = AppIcons.icCloudySun;
//      default:
//    }
//   return res;
// }
//     String fahrenheitCelsius(double fahrenheit){
//      double number = (fahrenheit -32) * 5 / 9;
//      return number.truncate().toString();
//     }
//   String rainFall(double windSpeed){
//       double res = (windSpeed) * 2.54;
//       return res.toStringAsFixed(0);
//   }
