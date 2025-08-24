import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecommendedCardItem extends StatelessWidget {
  const RecommendedCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffECF1F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 7 / 4,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                        Assets.assetsImagesTestImage2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      right: 12,
                      bottom: -12,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(3),
                          child: CustomContainer(
                            text: "4N/5D",
                            textStyle: StylesData.semiBold10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "Explore Aspen",
              style: StylesData.medium14.copyWith(
                fontFamily: "CircularXX",
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.arrowTrendUp,
                  color: Color(0xff7395C7),
                  size: 12,
                ),
                const SizedBox(width: 4),
                Text(
                  "Hot Deal",
                  style: StylesData.regular10.copyWith(
                    fontFamily: "CircularXX",
                    color: const Color(0xff3A544F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
