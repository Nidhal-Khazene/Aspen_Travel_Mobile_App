import 'package:aspen_travel_app/constants.dart';
import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/widgets/custom_button.dart';
import 'package:aspen_travel_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/text_styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(
            Assets.assetsImagesSplashBackground,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.18,
          left: 0,
          right: 0,
          child: SvgPicture.asset(Assets.assetsImagesAspenLogo),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPaddingSplashView,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Plan your", style: StylesData.normal24),
              const Text("Luxurious", style: StylesData.medium40),
              const Text("Vacation", style: StylesData.medium40),
              const SizedBox(height: 24),
              CustomButton(
                title: "Explore",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeView.routeName);
                },
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ],
    );
  }
}
