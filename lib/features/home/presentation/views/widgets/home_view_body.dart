import 'package:aspen_travel_app/features/home/presentation/views/widgets/build_popular_see_all_row.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/build_recommended_line.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/category_chips.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/feature_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 44),
        CustomAppBar(),
        SizedBox(height: 24),
        CustomSearchBar(),
        SizedBox(height: 32),
        CategoryChips(),
        SizedBox(height: 32),
        BuildPopularSeeAllRow(),
        SizedBox(height: 12),
        FeatureListViewBuilder(),
        SizedBox(height: 32),
        BuildRecommendedLine(),
      ],
    );
  }
}
