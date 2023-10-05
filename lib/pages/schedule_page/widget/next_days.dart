import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';
import '../../../utils/ic_path_extension.dart';
import '../../../utils/temp_extension.dart';
import '../../../utils/time_extensions.dart';

import '../../../model/weather_model/day_model.dart';

class NextDays extends StatelessWidget {
  const NextDays({
    required this.days,
    super.key,
  });


  final List<Day> days;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Column(
        children: days.map((e){
          return WeekItem(weekDay: (e.datetimeEpoch ?? 0).weekName,
            degree: "${(e.temp ?? 0.0).fahrenheitToCelsius}°",
            icon: (e.icon ?? "").weatherIconPath,
          );
        }).toList(),
      ),
    );
  }
}
class WeekItem extends StatelessWidget {
  const WeekItem({
    required this.icon,
    required,
    required this.degree,
    required this.weekDay,
    super.key,
  });

  final String weekDay;
  final String degree;
  final String icon;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white30,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        weekDay,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Text(degree),
                        Image(
                          image: AssetImage(icon),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
