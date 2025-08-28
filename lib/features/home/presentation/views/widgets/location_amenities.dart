import 'package:flutter/material.dart';

import '../../../../../core/utils/color_data.dart';
import '../../../../../core/utils/text_styles.dart';

class LocationAmenities extends StatelessWidget {
  const LocationAmenities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Facilities",
          style: StylesData.semiBold18.copyWith(color: ColorData.kTextColor),
        ),
      ],
    );
  }
}
