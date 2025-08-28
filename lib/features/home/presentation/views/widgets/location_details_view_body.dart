import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationDetailsViewBody extends StatelessWidget {
  const LocationDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const LocationImage(),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Coeurdes Alpes",
                  style: StylesData.semiBold24.copyWith(
                    color: ColorData.kTextColor,
                  ),
                ),
                Text(
                  "Show map",
                  style: StylesData.bold14.copyWith(
                    color: ColorData.kPrimaryColor,
                    fontFamily: "CircularXX",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                SvgPicture.asset(Assets.assetsImagesStarWithShadow),
                const SizedBox(width: 4),
                Text(
                  "4.5 ",
                  style: StylesData.regular12.copyWith(
                    fontFamily: "CircularXX",
                    color: const Color(0xff606060),
                  ),
                ),
                Text(
                  "(355 Reviews)",
                  style: StylesData.regular12.copyWith(
                    fontFamily: "CircularXX",
                    color: const Color(0xff606060),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
              style: StylesData.medium14.copyWith(
                color: const Color(0xff3A544F),
              ),
            ),
            const SizedBox(height: 9),
            Row(
              children: [
                Text(
                  "Read more",
                  style: StylesData.bold14.copyWith(
                    fontFamily: "CircularXX",
                    color: ColorData.kPrimaryColor,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: ColorData.kPrimaryColor,
                  size: 24,
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              "Facilities",
              style: StylesData.semiBold18.copyWith(
                color: ColorData.kTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
