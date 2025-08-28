import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class AmenityBox extends StatelessWidget {
  const AmenityBox({super.key, required this.amenity, required this.title});

  final Widget amenity;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffEEF2FB),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          amenity,
          Text(
            title,
            style: StylesData.bold10.copyWith(
              color: ColorData.kNavIconColor,
              fontFamily: "CircularXX",
            ),
          ),
        ],
      ),
    );
  }
}
