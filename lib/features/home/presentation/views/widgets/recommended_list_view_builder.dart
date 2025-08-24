import 'package:aspen_travel_app/features/home/presentation/views/widgets/recommended_card_item.dart';
import 'package:flutter/cupertino.dart';

class RecommendedListViewBuilder extends StatelessWidget {
  const RecommendedListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: RecommendedCardItem(),
          );
        },
      ),
    );
  }
}
