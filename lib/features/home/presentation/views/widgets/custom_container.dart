import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text, this.icon});
  final String text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: ShapeDecoration(
        color: const Color(0xFF4C5652),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(59)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Visibility(
            visible: icon != null,
            child: FaIcon(icon, size: 12, color: const Color(0xffF8D675)),
          ),
          // icon != null
          //     ? FaIcon(icon, size: 12, color: const Color(0xffF8D675))
          //     : const SizedBox.shrink(),
          Text(
            text,
            style: StylesData.medium12.copyWith(fontFamily: "CircularXX"),
          ),
        ],
      ),
    );
  }
}
