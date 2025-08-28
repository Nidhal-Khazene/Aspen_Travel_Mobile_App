import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/feature_card_details.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_details_view.dart';
import 'package:flutter/material.dart';

class FeatureCardItem extends StatelessWidget {
  const FeatureCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, LocationDetailsView.routeName);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: AspectRatio(
          aspectRatio: 2.65 / 4,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Image.asset(
                  Assets.assetsImagesTestImage,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                right: 0,
                top: 175,
                left: 12,
                bottom: 0,
                child: FeatureCardDetails(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//SizedBox(
// width: 188,
// height: 240,
