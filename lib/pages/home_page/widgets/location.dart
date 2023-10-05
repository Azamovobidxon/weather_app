import 'package:flutter/material.dart';

import '../../../styles/app_colors.dart';
import '../../../utils/time_extensions.dart';

class LocationView extends StatelessWidget {
  final String placeName;

  const LocationView({
    super.key,
    required this.placeName,
  });

  // http bilan ishlatish
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            placeName,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            DateTime.now().weekMonthDay,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.greyText,
            ),
          ),
        ],
      ),
    );
  }
}
