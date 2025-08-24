import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BuildRecommendedLine extends StatelessWidget {
  const BuildRecommendedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Recommended",
        style: StylesData.semiBold18.copyWith(color: const Color(0xff232323)),
      ),
    );
  }
}
