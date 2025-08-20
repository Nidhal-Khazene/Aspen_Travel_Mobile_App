import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            Assets.assetsImagesSearch,
            width: 16.89,
            height: 17.27,
          ),
        ),
        hintText: 'Find things to do',
        hintStyle: StylesData.medium13.copyWith(
          color: const Color(0xFFB7B7B7),
          fontFamily: 'CircularXX',
        ),
        fillColor: const Color(0xFFF3F8FE),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.transparent),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
