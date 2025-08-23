import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/feature_card_details.dart';
import 'package:flutter/material.dart';

class CustomFeatureCard extends StatelessWidget {
  const CustomFeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 188,
      height: 240,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: SizedBox(
              width: 188,
              height: 240,
              child: Image.asset(
                Assets.assetsImagesTestImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            right: 0,
            top: 170,
            left: 12,
            bottom: 0,
            child: FeatureCardDetails(),
          ),
        ],
      ),
    );
  }
}
