import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';
import '../../../utils/ic_path_extension.dart';
import '../../../utils/temp_extension.dart';

import '../../../model/weather_model/hours_model.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({
    required this.hours,
    super.key,
  });

  final List<Hour>? hours;

  bool checkTimeNow(Hour hour) => "${DateTime.now().hour}".padLeft(2, "0") == (hour.datetime?.substring(0, 2) ?? "00");

  @override
  Widget build(BuildContext context) {
    if (hours == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 10,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: ColoredBox(
                        color: AppColors.fillBoxTextColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: SizedBox(
                      width: 10,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: hours!.length + 1,
              itemBuilder: (context, index) => const SizedBox(width: 10),
              separatorBuilder: (context, index) {
                Hour hour = hours![index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: SizedBox(
                    width: 50,
                    height: 90,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: checkTimeNow(hour)
                            ? AppColors.white50
                            : AppColors.white30,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          checkTimeNow(hour)
                              ? const Text(
                            "now",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                              : Text(
                            hour.datetime?.substring(0, 5) ?? "",
                            style: const TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              (hour.icon ?? "").weatherIconPath,
                            ),
                            width: 24,
                            height: 24,
                          ),
                          Text(
                            "${(hour.temp ?? 0.0).fahrenheitToCelsius}°",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}