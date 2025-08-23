import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomFeatureCard extends StatelessWidget {
  const CustomFeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}
