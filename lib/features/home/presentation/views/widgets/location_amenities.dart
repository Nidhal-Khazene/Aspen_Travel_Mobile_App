import 'package:aspen_travel_app/features/home/presentation/views/widgets/amenity_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              amenity: FaIcon(
                FontAwesomeIcons.wifi,
                color: ColorData.kNavIconColor,
                size: 32,
              ),
              title: "Wifi",
            ),
            Spacer(flex: 1),
            AmenityBox(
              amenity: FaIcon(
                FontAwesomeIcons.utensils,
                color: ColorData.kNavIconColor,
                size: 32,
              ),
              title: "Dinner",
            ),
            Spacer(flex: 1),
            AmenityBox(
              amenity: FaIcon(
                FontAwesomeIcons.bath,
                color: ColorData.kNavIconColor,
                size: 32,
              ),
              title: "Tub",
            ),
            Spacer(flex: 1),
            AmenityBox(
              amenity: FaIcon(
                FontAwesomeIcons.waterLadder,
                color: ColorData.kNavIconColor,
                size: 32,
              ),
              title: "Pool",
            ),
          ],
        ),
      ],
    );
  }
}
