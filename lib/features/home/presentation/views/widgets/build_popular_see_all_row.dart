import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BuildPopularSeeAllRow extends StatelessWidget {
  const BuildPopularSeeAllRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Popular",
          style: StylesData.semiBold18.copyWith(color: const Color(0xff232323)),
        ),
        Text(
          "See all",
          style: StylesData.medium12.copyWith(
            color: ColorData.kPrimaryColor,
            fontFamily: "CircularXX",
          ),
        ),
      ],
    );
  }
}
