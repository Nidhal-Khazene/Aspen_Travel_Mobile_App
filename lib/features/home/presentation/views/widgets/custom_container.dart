import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

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
        spacing: 4,
        children: [
          SizedBox(height: 16, width: 16, child: Icon(icon)),
          Text(
            text,
            style: StylesData.medium12.copyWith(fontFamily: "CircularXX"),
          ),
        ],
      ),
    );
  }
}
