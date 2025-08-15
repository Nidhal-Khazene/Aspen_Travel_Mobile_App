import 'package:aspen_travel_app/constants.dart';
import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/widgets/custom_button.dart';
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
          top: MediaQuery.of(context).size.height * 0.18,
          left: 0,
          right: 0,
          child: SvgPicture.asset(Assets.assetsImagesAspenLogo),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Plan your", style: TextStyles.normal24),
              const Text("Luxurious", style: TextStyles.medium40),
              const Text("Vacation", style: TextStyles.medium40),
              const SizedBox(height: 24),
              CustomButton(title: "Explore", onPressed: () {}),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ],
    );
  }
}
