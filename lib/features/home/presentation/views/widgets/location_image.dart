import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class LocationImage extends StatelessWidget {
  const LocationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.38,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                Assets.assetsImagesTestImage3,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
