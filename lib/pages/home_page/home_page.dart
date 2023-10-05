import 'package:flutter/material.dart';
import '../../../pages/home_page/widgets/custom%20_app_bar.dart';
import '../../../pages/home_page/widgets/hourly_weather.dart';
import '../../../pages/home_page/widgets/location.dart';
import '../../../pages/home_page/widgets/schedule_of_week.dart';
import '../../../pages/home_page/widgets/weather_info.dart';
import '../../../utils/ic_path_extension.dart';
import '../../../utils/temp_extension.dart';
import '../../styles/app_colors.dart';
import '../controller/main_controller_dio.dart';
import '../data/geo_repository.dart';
import '../data/weather_repository.dart';
import 'widgets/weather_celsius.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MainController controller;

  @override
  void initState() {
    super.initState();
    controller = MainController(
      geoRepository: GeoRepository(),
      weatherRepository: WeatherRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: FutureBuilder(
          future: controller.getWeatherData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return SafeArea(
                child: ListView(
                  children: [
                    const CustomAppBar(),
                    LocationView(
                      placeName: controller.weatherModel?.resolvedAddress ?? "",
                    ),
                    WeatherCelsius(
                      iconPath:
                          (controller.weatherModel?.currentConditions?.icon ??
                                  "")
                              .weatherIconPath,
                      celsius:
                          (controller.weatherModel?.currentConditions?.temp ??
                                  0.0)
                              .fahrenheitToCelsius,
                      condition: controller
                              .weatherModel?.currentConditions?.conditions ??
                          "",
                    ),
                    WeatherInfo(
                      rainFall:
                          controller.weatherModel?.currentConditions?.precip ??
                              0.0,
                      wind: controller
                              .weatherModel?.currentConditions?.windspeed ??
                          0.0,
                      humidity: controller
                              .weatherModel?.currentConditions?.humidity ??
                          0.0,
                    ),
                    ScheduleOfWeek(days: controller.weatherModel?.days ?? []),
                    HourlyWeather(
                      hours: controller.weatherModel?.days.firstOrNull?.hours,
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
