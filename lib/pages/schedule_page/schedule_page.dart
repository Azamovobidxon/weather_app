import 'package:flutter/material.dart';
import '../../../model/weather_model/day_model.dart';
import '../../../pages/schedule_page/widget/info_a_week.dart';
import '../../../pages/schedule_page/widget/next_days.dart';
import '../../../pages/schedule_page/widget/top_bar.dart';
import '../../../styles/app_colors.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({
    super.key,
    required this.days,
  });

  final List<Day> days;

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
        child: SafeArea(
          child: Column(
            children: [
              const TopBar(),
              Expanded(
                child: ListView(
                  children: [
                    InfoAWeek(
                      day: days.skip(1).take(1).firstOrNull,
                    ),
                     NextDays(
                      days:days.skip(2).skip(6).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
