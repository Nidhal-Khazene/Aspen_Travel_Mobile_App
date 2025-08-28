import 'package:aspen_travel_app/features/home/presentation/views/widgets/amenity_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color_data.dart';
import '../../../../../core/utils/text_styles.dart';

class LocationAmenities extends StatelessWidget {
  const LocationAmenities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Facilities",
          style: StylesData.semiBold18.copyWith(color: ColorData.kTextColor),
        ),
        const SizedBox(height: 16),
        const Row(
          children: [
            AmenityBox(
              amenity: Icon(
                Icons.wifi,
                color: ColorData.kNavIconColor,
                size: 36,
              ),
              title: "Wifi",
            ),
            SizedBox(width: 5),
          ],
        ),
      ],
    );
  }
}
