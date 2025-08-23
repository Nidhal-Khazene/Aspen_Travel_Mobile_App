import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/build_popular_see_all_row.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/category_chips.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/feature_list_view_builder.dart';
import 'package:flutter/material.dart';

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
        const BuildPopularSeeAllRow(),
        const SizedBox(height: 12),
        const FeatureListViewBuilder(),
        const SizedBox(height: 32),
        Text(
          "Recommended",
          style: StylesData.semiBold18.copyWith(color: const Color(0xff232323)),
        ),
      ],
    );
  }
}
