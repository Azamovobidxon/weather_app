// import 'dart:convert';
// import 'package:http/http.dart';
// import 'package:wether/constants/http_api_constants.dart';
// import 'package:wether/model/weather_model/weather_model.dart';
// import 'package:wether/styles/app_icons.dart';
//
// class MainController {
//   String? addressOfCountryAndCity;
//   String? currentCelsius;
//   String? weatherInfoWord;
//   String? weatherInfoIcon;
//   String? rainInfo;
//   String? humidity;
//   String? windSpeed;
//   List<String>? currentDayTime;
//   List<String>? currentWeatherIcon;
//   List<double>? currentTimeCelsius;
//   String? tomorrowCelcius;
//   String? tomorrowWeatherIcons;
//   String? tomorrowWinSpeed;
//   String? tomorrowRainFall;
//   String? tomorrowHumidity;
//   List<int>? tomorrowWeeks;
//   List<double>? tomorrowCelsiusofWeeks;
//   List<String>? tomorrowIconOfWeeks;
//
//   void Function(void Function()) update;
//
//   MainController(this.update);
//
//   Future<void> getApi() async {
//     Response? response;
//     try {
//       final Uri url = Uri.parse(ApiConstants.wheatherPath);
//       response = await get(url);
//     } catch (e, stackTrace) {
//       FormatException("$e stackTrace $stackTrace");
//     }
//
//     final WeatherModel weatherModel =
//         WeatherModel.fromJson(jsonDecode(response?.body ?? ""));
//
//     addressOfCountryAndCity = weatherModel.resolvedAddress;
//     weatherInfoIcon = weatherInIcon(weatherModel.currentConditions?.icon ?? "");
//         currentCelsius =fahrenheitToCelsious(weatherModel.currentConditions?.temp ?? 0);
//         fahrenheitToCelsious(weatherModel.currentConditions?.temp ?? 0);
//     weatherInfoWord = weatherInfoSingleWord(
//         weatherModel.currentConditions?.icon ?? "Showery");
//     rainInfo = rainFall(weatherModel.currentConditions?.precip ?? 0);
//     windSpeed = weatherModel.currentConditions?.windspeed?.round().toString();
//     humidity = weatherModel.currentConditions?.humidity?.toStringAsFixed(0);
//     currentDayTime = weatherModel.days[0].hours
//         .map((e) => e.datetime?.substring(0, 5))
//         .cast<String>()
//         .toList();
//     currentWeatherIcon =
//         weatherModel.days[0].hours.map((e) => e.icon).cast<String>().toList();
//     currentTimeCelsius =
//         weatherModel.days[0].hours.map((e) => e.temp).cast<double>().toList();
//
//     tomorrowCelcius = fahrenheitToCelsious(weatherModel.days[1].temp ?? 0);
//     tomorrowWeatherIcons = weatherInIcon(weatherModel.days[1].icon ?? "");
//     tomorrowWinSpeed = weatherModel.days[1].windspeed?.round().toString();
//     tomorrowRainFall = rainFall(weatherModel.days[1].precip ?? 0);
//     tomorrowHumidity = weatherModel.days[1].humidity?.toStringAsFixed(0);
//     tomorrowWeeks =
//         weatherModel.days.map((e) => e.datetimeEpoch).cast<int>().toList();
//     tomorrowCelsiusofWeeks =
//         weatherModel.days.map((e) => e.temp).cast<double>().toList();
//     tomorrowIconOfWeeks =
//         weatherModel.days.map((e) => e.icon).cast<String>().toList();
//
//   update(() {} );
//   }
// }
// String weekDays( int dateTimeEpoch){
//   String res = "";
//   DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateTimeEpoch * 1000);
//   int week =  dateTime.weekday;
//   switch(week) {
//     case 1:
//       res = "Monday";
//     case 2:
//       res = "Tuesday";
//     case 3:
//       res = "Wendseday";
//     case 4:
//       res = "Thursday";
//     case 5:
//       res = "Friday";
//     case 6:
//       res = "Saturday";
//     case 7:
//       res = "Sunday";
//   }
//    return res;
// }
//
// String fahrenheitToCelsious(double fahrenheit) {
//   double number = (fahrenheit - 32) * 5 / 9;
//   return number.truncate().toString();
// }
//  String weatherInfoSingleWord(String info) {
//   String res = "Showery";
//   switch (info) {
//     case "clear-day" || "clear-night":
//       res = "Sunny";
//     case "rain":
//       res = "Rainy";
//     case "snow":
//       res = "Snowy";
//     case "partly-cloudy-day" || "cloudy" || "partly-cloudy-night":
//       res = "Cloudy";
//     default:
//       res;
//   }
//   return res;
// }
//
// String weatherInIcon(String info) {
//   String res = AppIcons.icClodyRain;
//   switch (info) {
//     case "clear-day":
//       res = AppIcons.icSun;
//     case "rain":
//       res = AppIcons.icClodyRain;
//     case "snow":
//       res = AppIcons.icClody;
//     case "cloudy" || "partly-cloudy-night" || "clear-night":
//       res = AppIcons.icClody;
//     case "partly-cloudy-day":
//       res = AppIcons.icClodySun;
//     default:
//       res;
//   }
//   return res;
// }
//
// String rainFall(double info) {
//   double res = info * 2.54;
//   return res.toStringAsFixed(0);
// }
