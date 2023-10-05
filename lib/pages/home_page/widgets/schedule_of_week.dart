import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether/pages/schedule_page/schedule_page.dart';

import '../../../model/weather_model/day_model.dart';
import '../../../styles/app_colors.dart';

class ScheduleOfWeek extends StatelessWidget {
  const ScheduleOfWeek({
    required this.days,
    super.key,
  });

  final List<Day> days;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Tomorrow",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: AppColors.blackAccsent,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SchedulePage(days:days),
                  ),
                );
              },
              child: const Row(
                children: [
                  Text(
                    "Next 7 Days ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    CupertinoIcons.right_chevron,
                    size: 15,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
