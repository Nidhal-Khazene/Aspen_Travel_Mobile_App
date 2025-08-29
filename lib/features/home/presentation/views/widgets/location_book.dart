import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationBook extends StatelessWidget {
  const LocationBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "price",
              style: StylesData.medium12.copyWith(
                fontFamily: "CircularXX",
                color: ColorData.kTextColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "\$199",
              style: StylesData.bold24.copyWith(color: const Color(0xff2DD7A4)),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          height: 56,
          child: TextButton(
            style: TextButton.styleFrom(
              visualDensity: const VisualDensity(
                vertical: VisualDensity.minimumDensity,
              ),
              backgroundColor: ColorData.kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Book Now",
                  style: StylesData.bold16.copyWith(
                    fontFamily: "CircularXX",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  Assets.assetsImagesArrowRight,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
