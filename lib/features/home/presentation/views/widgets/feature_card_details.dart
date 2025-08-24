import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureCardDetails extends StatelessWidget {
  const FeatureCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomContainer(
          text: "Alley Palace",
          textStyle: StylesData.medium12.copyWith(fontFamily: "CircularXX"),
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomContainer(
              icon: FontAwesomeIcons.solidStar,
              text: '4.1',
              textStyle: StylesData.medium12.copyWith(fontFamily: "CircularXX"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CircleAvatar(
                minRadius: 12,
                child: FaIcon(
                  FontAwesomeIcons.solidHeart,
                  size: 12,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
