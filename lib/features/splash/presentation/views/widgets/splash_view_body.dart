import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/text_styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Positioned.fill(
            child: Image.asset(
              Assets.assetsImagesSplashBackground,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.20,
          left: 0,
          right: 0,
          child: SvgPicture.asset(Assets.assetsImagesAspenLogo),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Plan your", style: TextStyles.normal24),
              Text("Luxurious", style: TextStyles.medium40),
              Text("Vacation", style: TextStyles.medium40),
            ],
          ),
        ),
      ],
    );
  }
}
