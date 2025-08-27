import 'package:aspen_travel_app/features/home/presentation/views/widgets/feature_card_item.dart';
import 'package:flutter/material.dart';

class FeatureListViewBuilder extends StatelessWidget {
  const FeatureListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 28),
            child: FeatureCardItem(),
          );
        },
      ),
    );
  }
}
