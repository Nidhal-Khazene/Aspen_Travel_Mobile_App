import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class LocationImage extends StatelessWidget {
  const LocationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Assets.assetsImagesTestImage3,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 12,
          top: 12,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffF3F8FE),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xffB7B7B7),
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          right: 14,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  spreadRadius: 2,
                  blurRadius: 25,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Color(0xffF2F7FD),
              minRadius: 22,
              child: FaIcon(
                FontAwesomeIcons.solidHeart,
                size: 24,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
