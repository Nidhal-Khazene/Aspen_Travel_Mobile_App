import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/category_chips.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 44),
        const CustomAppBar(),
        const SizedBox(height: 24),
        const CustomSearchBar(),
        const SizedBox(height: 32),
        const CategoryChips(),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular",
              style: StylesData.semiBold18.copyWith(
                color: const Color(0xff232323),
              ),
            ),
            Text(
              "See all",
              style: StylesData.medium12.copyWith(
                color: ColorData.kPrimaryColor,
                fontFamily: "CircularXX",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
