import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_search_bar.dart';
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
      ],
    );
  }
}
