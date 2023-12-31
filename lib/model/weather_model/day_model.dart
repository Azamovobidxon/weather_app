import 'package:wether/model/weather_model/hours_model.dart';

class Day {
  const Day({
    required this.datetime,
    required this.datetimeEpoch,
    required this.tempmax,
    required this.tempmin,
    required this.temp,
    required this.feelslikemax,
    required this.feelslikemin,
    required this.feelslike,
    required this.dew,
    required this.humidity,
    required this.precip,
    required this.precipprob,
    required this.precipcover,
    required this.preciptype,
    required this.snow,
    required this.snowdepth,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.cloudcover,
    required this.visibility,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
    required this.conditions,
    required this.description,
    required this.icon,
    required this.stations,
    required this.source,
    required this.hours,
  });

  final String? datetime;
  final int? datetimeEpoch;
  final double? tempmax;
  final double? tempmin;
  final double? temp;
  final double? feelslikemax;
  final double? feelslikemin;
  final double? feelslike;
  final double? dew;
  final double? humidity;
  final double? precip;
  final double? precipprob;
  final double? precipcover;
  final List<String>? preciptype;
  final double? snow;
  final double? snowdepth;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? cloudcover;
  final double? visibility;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final double? severerisk;
  final String? sunrise;
  final int? sunriseEpoch;
  final String? sunset;
  final int? sunsetEpoch;
  final double? moonphase;
  final String? conditions;
  final String? description;
  final String? icon;
  final List<String>? stations;
  final String? source;
  final List<Hour> hours;

  factory Day.fromJson(Map<String, Object?> json) => Day(
        datetime: json["datetime"] as String?,
        datetimeEpoch: json["datetimeEpoch"] as int?,
        tempmax: json["tempmax"] as double?,
        tempmin: json["tempmin"] as double?,
        temp: json["temp"] as double?,
        feelslikemax: json["feelslikemax"] as double?,
        feelslikemin: json["feelslikemin"] as double?,
        feelslike: json["feelslike"] as double?,
        dew: json["dew"] as double?,
        humidity: json["humidity"] as double?,
        precip: json["precip"] as double?,
        precipprob: json["precipprob"] as double?,
        precipcover: json["precipcover"] as double?,
        preciptype: json["preciptype"] != null
            ? List.from(json["preciptype"] as List)
            : [],
        snow: json["snow"] as double?,
        snowdepth: json["snowdepth"] as double?,
        windgust: json["windgust"] as double?,
        windspeed: json["windspeed"] as double?,
        winddir: json["winddir"] as double?,
        pressure: json["pressure"] as double?,
        cloudcover: json["cloudcover"] as double?,
        visibility: json["visibility"] as double?,
        solarradiation: json["solarradiation"] as double?,
        solarenergy: json["solarenergy"] as double?,
        uvindex: json["uvindex"] as double?,
        severerisk: json["severerisk"] as double?,
        sunrise: json["sunrise"] as String?,
        sunriseEpoch: json["sunriseEpoch"] as int?,
        sunset: json["sunset"] as String?,
        sunsetEpoch: json["sunsetEpoch"] as int?,
        moonphase: json["moonphase"] as double?,
        conditions: json["conditions"] as String?,
        description: json["description"] as String?,
        icon: json["icon"] as String?,
        stations:
            json["stations"] != null ? List.from(json["stations"] as List) : [],
        source: json["source"] as String?,
        hours: List.from(json["hours"] as List)
            .map((e) => Hour.fromJson(e))
            .toList(),
      );

  @override
  String toString() => 'Day(datetime: $datetime, '
      'datetimeEpoch: $datetimeEpoch, '
      'tempmax: $tempmax, '
      'tempmin: $tempmin, '
      'temp: $temp,'
      'feelslikemax: $feelslikemax,'
      'feelslikemin: $feelslikemin,'
      'feelslike: $feelslike,'
      'dew: $dew,'
      'humidity: $humidity,'
      'precip: $precip,'
      'precipprob: $precipprob, '
      'precipcover: $precipcover,'
      'preciptype: $preciptype, '
      'snow: $snow, '
      'snowdepth: $snowdepth,'
      'windgust: $windgust,'
      'windspeed: $windspeed,'
      'winddir: $winddir,'
      'pressure: $pressure, '
      'cloudcover: $cloudcover, '
      'visibility: $visibility,'
      'solarradiation: $solarradiation, '
      'solarenergy: $solarenergy,'
      'uvindex: $uvindex, '
      'severerisk: $severerisk, '
      'sunrise: $sunrise,'
      'sunriseEpoch: $sunriseEpoch, '
      'sunset: $sunset,'
      'sunsetEpoch: $sunsetEpoch,'
      'moonphase: $moonphase,'
      'conditions: $conditions, '
      'description: $description,'
      'icon: $icon,'
      'stations: $stations, '
      'source: $source,'
      'hours: $hours)';
}

final json = {
  "datetime": "2023-09-17",
  "datetimeEpoch": 1694890800,
  "tempmax": 86.3,
  "tempmin": 62.5,
  "temp": 72.7,
  "feelslikemax": 82.8,
  "feelslikemin": 62.5,
  "feelslike": 72.1,
  "dew": 40.5,
  "humidity": 34.4,
  "precip": 0.0,
  "precipprob": 0.0,
  "precipcover": 0.0,
  "preciptype": null,
  "snow": 0.0,
  "snowdepth": 0.0,
  "windgust": 9.4,
  "windspeed": 6.9,
  "winddir": 176.4,
  "pressure": 1011.9,
  "cloudcover": 46.9,
  "visibility": 8.8,
  "solarradiation": 234.5,
  "solarenergy": 20.2,
  "uvindex": 8.0,
  "severerisk": 10.0,
  "sunrise": "06:04:48",
  "sunriseEpoch": 1694912688,
  "sunset": "18:30:01",
  "sunsetEpoch": 1694957401,
  "moonphase": 0.08,
  "conditions": "Partially cloudy",
  "description": "Partly cloudy throughout the day.",
  "icon": "partly-cloudy-day",
  "stations": ["UTTT"],
  "source": "comb",
  "hours": [
    {
      "datetime": "00:00:00",
      "datetimeEpoch": 1694890800,
      "temp": 64.3,
      "feelslike": 64.3,
      "humidity": 48.57,
      "dew": 44.5,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 8.9,
      "windspeed": 4.7,
      "winddir": 80.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 77.4,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-night",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "01:00:00",
      "datetimeEpoch": 1694894400,
      "temp": 64.3,
      "feelslike": 64.3,
      "humidity": 52.0,
      "dew": 46.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 7.2,
      "windspeed": 4.7,
      "winddir": 80.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 99.9,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Overcast",
      "icon": "cloudy",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "02:00:00",
      "datetimeEpoch": 1694898000,
      "temp": 64.3,
      "feelslike": 64.3,
      "humidity": 52.0,
      "dew": 46.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.5,
      "windspeed": 6.9,
      "winddir": 80.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 86.1,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-night",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "03:00:00",
      "datetimeEpoch": 1694901600,
      "temp": 62.5,
      "feelslike": 62.5,
      "humidity": 55.39,
      "dew": 46.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 2.5,
      "windspeed": 4.7,
      "winddir": 90.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 84.3,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-night",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "04:00:00",
      "datetimeEpoch": 1694905200,
      "temp": 62.5,
      "feelslike": 62.5,
      "humidity": 55.39,
      "dew": 46.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 1.3,
      "windspeed": 6.9,
      "winddir": 80.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 90.9,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Overcast",
      "icon": "cloudy",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "05:00:00",
      "datetimeEpoch": 1694908800,
      "temp": 64.3,
      "feelslike": 64.3,
      "humidity": 52.0,
      "dew": 46.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 3.4,
      "windspeed": 4.7,
      "winddir": 130.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 81.1,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-night",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "06:00:00",
      "datetimeEpoch": 1694912400,
      "temp": 64.3,
      "feelslike": 64.3,
      "humidity": 52.0,
      "dew": 46.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 7.2,
      "windspeed": 4.7,
      "winddir": 120.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 85.2,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-night",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "07:00:00",
      "datetimeEpoch": 1694916000,
      "temp": 64.3,
      "feelslike": 64.3,
      "humidity": 48.57,
      "dew": 44.5,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 8.5,
      "windspeed": 4.7,
      "winddir": 130.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 93.8,
      "solarradiation": 33.0,
      "solarenergy": 0.1,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Overcast",
      "icon": "cloudy",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "08:00:00",
      "datetimeEpoch": 1694919600,
      "temp": 66.1,
      "feelslike": 66.1,
      "humidity": 45.62,
      "dew": 44.5,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 8.1,
      "windspeed": 6.9,
      "winddir": 160.0,
      "pressure": 1014.0,
      "visibility": 6.2,
      "cloudcover": 25.0,
      "solarradiation": 158.0,
      "solarenergy": 0.6,
      "uvindex": 2.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "09:00:00",
      "datetimeEpoch": 1694923200,
      "temp": 67.9,
      "feelslike": 67.9,
      "humidity": 40.02,
      "dew": 42.7,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 5.6,
      "windspeed": 6.9,
      "winddir": 160.0,
      "pressure": 1014.0,
      "visibility": 6.2,
      "cloudcover": 25.0,
      "solarradiation": 383.0,
      "solarenergy": 1.4,
      "uvindex": 4.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "10:00:00",
      "datetimeEpoch": 1694926800,
      "temp": 71.5,
      "feelslike": 71.5,
      "humidity": 35.39,
      "dew": 42.7,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.0,
      "windspeed": 6.9,
      "winddir": 160.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 68.5,
      "solarradiation": 555.0,
      "solarenergy": 2.0,
      "uvindex": 6.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "11:00:00",
      "datetimeEpoch": 1694930400,
      "temp": 75.1,
      "feelslike": 75.1,
      "humidity": 33.59,
      "dew": 44.5,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.0,
      "windspeed": 4.7,
      "winddir": 200.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 59.1,
      "solarradiation": 674.0,
      "solarenergy": 2.4,
      "uvindex": 7.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "12:00:00",
      "datetimeEpoch": 1694934000,
      "temp": 78.7,
      "feelslike": 78.7,
      "humidity": 25.96,
      "dew": 40.9,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.0,
      "windspeed": 4.7,
      "winddir": 230.0,
      "pressure": 1013.0,
      "visibility": 6.2,
      "cloudcover": 2.7,
      "solarradiation": 758.0,
      "solarenergy": 2.7,
      "uvindex": 8.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "13:00:00",
      "datetimeEpoch": 1694937600,
      "temp": 80.5,
      "feelslike": 79.3,
      "humidity": 26.23,
      "dew": 42.7,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.0,
      "windspeed": 6.9,
      "winddir": 270.0,
      "pressure": 1012.0,
      "visibility": 6.2,
      "cloudcover": 2.5,
      "solarradiation": 788.0,
      "solarenergy": 2.8,
      "uvindex": 8.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "14:00:00",
      "datetimeEpoch": 1694941200,
      "temp": 82.3,
      "feelslike": 80.2,
      "humidity": 23.08,
      "dew": 40.9,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.5,
      "windspeed": 6.9,
      "winddir": 230.0,
      "pressure": 1012.0,
      "visibility": 6.2,
      "cloudcover": 1.9,
      "solarradiation": 746.0,
      "solarenergy": 2.7,
      "uvindex": 7.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-day",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "15:00:00",
      "datetimeEpoch": 1694944800,
      "temp": 82.3,
      "feelslike": 80.2,
      "humidity": 23.08,
      "dew": 40.9,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.9,
      "windspeed": 6.9,
      "winddir": 240.0,
      "pressure": 1012.0,
      "visibility": 6.2,
      "cloudcover": 100.0,
      "solarradiation": 647.0,
      "solarenergy": 2.3,
      "uvindex": 6.0,
      "severerisk": 10.0,
      "conditions": "Overcast",
      "icon": "cloudy",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "16:00:00",
      "datetimeEpoch": 1694948400,
      "temp": 82.3,
      "feelslike": 80.2,
      "humidity": 23.08,
      "dew": 40.9,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.9,
      "windspeed": 4.7,
      "winddir": 220.0,
      "pressure": 1012.0,
      "visibility": 6.2,
      "cloudcover": 92.6,
      "solarradiation": 459.0,
      "solarenergy": 1.7,
      "uvindex": 5.0,
      "severerisk": 10.0,
      "conditions": "Overcast",
      "icon": "cloudy",
      "stations": ["UTTT"],
      "source": "obs"
    },
    {
      "datetime": "17:00:00",
      "datetimeEpoch": 1694952000,
      "temp": 86.3,
      "feelslike": 82.8,
      "humidity": 13.05,
      "dew": 29.7,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 4.5,
      "windspeed": 4.3,
      "winddir": 289.8,
      "pressure": 1009.0,
      "visibility": 15.0,
      "cloudcover": 41.5,
      "solarradiation": 295.0,
      "solarenergy": 1.1,
      "uvindex": 3.0,
      "severerisk": 10.0,
      "conditions": "Partially cloudy",
      "icon": "partly-cloudy-day",
      "stations": null,
      "source": "fcst"
    },
    {
      "datetime": "18:00:00",
      "datetimeEpoch": 1694955600,
      "temp": 83.4,
      "feelslike": 80.7,
      "humidity": 14.31,
      "dew": 29.7,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 6.0,
      "windspeed": 5.1,
      "winddir": 282.6,
      "pressure": 1009.0,
      "visibility": 15.0,
      "cloudcover": 4.2,
      "solarradiation": 124.0,
      "solarenergy": 0.4,
      "uvindex": 1.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-day",
      "stations": null,
      "source": "fcst"
    },
    {
      "datetime": "19:00:00",
      "datetimeEpoch": 1694959200,
      "temp": 78.9,
      "feelslike": 78.9,
      "humidity": 17.32,
      "dew": 30.8,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 8.5,
      "windspeed": 5.6,
      "winddir": 276.0,
      "pressure": 1009.0,
      "visibility": 15.0,
      "cloudcover": 2.5,
      "solarradiation": 7.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-night",
      "stations": null,
      "source": "fcst"
    },
    {
      "datetime": "20:00:00",
      "datetimeEpoch": 1694962800,
      "temp": 76.6,
      "feelslike": 76.6,
      "humidity": 20.71,
      "dew": 33.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 9.4,
      "windspeed": 5.6,
      "winddir": 294.1,
      "pressure": 1010.0,
      "visibility": 15.0,
      "cloudcover": 2.0,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-night",
      "stations": null,
      "source": "fcst"
    },
    {
      "datetime": "21:00:00",
      "datetimeEpoch": 1694966400,
      "temp": 75.1,
      "feelslike": 75.1,
      "humidity": 22.2,
      "dew": 33.9,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 8.3,
      "windspeed": 4.7,
      "winddir": 335.2,
      "pressure": 1010.0,
      "visibility": 15.0,
      "cloudcover": 0.0,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-night",
      "stations": null,
      "source": "fcst"
    },
    {
      "datetime": "22:00:00",
      "datetimeEpoch": 1694970000,
      "temp": 74.2,
      "feelslike": 74.2,
      "humidity": 22.71,
      "dew": 33.7,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 5.4,
      "windspeed": 3.1,
      "winddir": 22.5,
      "pressure": 1010.0,
      "visibility": 15.0,
      "cloudcover": 0.0,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-night",
      "stations": null,
      "source": "fcst"
    },
    {
      "datetime": "23:00:00",
      "datetimeEpoch": 1694973600,
      "temp": 72.6,
      "feelslike": 72.6,
      "humidity": 23.64,
      "dew": 33.3,
      "precip": 0.0,
      "precipprob": 0.0,
      "snow": 0.0,
      "snowdepth": 0.0,
      "preciptype": null,
      "windgust": 3.4,
      "windspeed": 2.9,
      "winddir": 79.8,
      "pressure": 1010.0,
      "visibility": 15.0,
      "cloudcover": 0.0,
      "solarradiation": 0.0,
      "solarenergy": 0.0,
      "uvindex": 0.0,
      "severerisk": 10.0,
      "conditions": "Clear",
      "icon": "clear-night",
      "stations": null,
      "source": "fcst"
    }
  ]
};
