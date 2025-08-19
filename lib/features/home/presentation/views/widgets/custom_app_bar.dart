import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore",
                style: TextStyles.regular14.copyWith(color: Colors.black),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_rounded,
                    color: ColorData.kPrimaryColor,
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "Aspen, USA",
                    style: TextStyles.regular12.copyWith(
                      color: const Color(0xFF5F5F5F),
                      fontFamily: "CircularXX",
                    ),
                  ),
                  const SizedBox(width: 0.5),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF5F5F5F),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Aspen",
            style: TextStyles.medium32.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
