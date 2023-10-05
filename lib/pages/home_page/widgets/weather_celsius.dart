import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';

class WeatherCelsius extends StatelessWidget {
  final String iconPath;
  final String condition;
  final String celsius;

  const WeatherCelsius({
    required this.iconPath,
    required this.condition,
    required this.celsius,
    super.key,
  });

  // http bilan ishlash

  // late final MainController mainController;
  // _WeatherCelsiusState() {
  //   mainController = MainController(setState)..getApi();
  // }

  //Dio dio bilan ishlash

  // late final MainController controller;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   controller = MainController(
  //     geoRepository: GeoRepasitory(),
  //     weatherRepozitory: WeatherRepository(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
        right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            height: 180,
            width: 180,
            fit: BoxFit.cover,
            image: AssetImage(
              iconPath),
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    celsius,
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w700,
                      height: 0.8,
                    ),
                  ),
                  Text(
                     condition,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.fillBoxTextColor,
                    ),
                  ),
                ],
              ),
              const Text(
                "°C",
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.fillBoxTextColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
