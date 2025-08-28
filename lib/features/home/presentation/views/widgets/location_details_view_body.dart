import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_image.dart';
import 'package:flutter/material.dart';

class LocationDetailsViewBody extends StatelessWidget {
  const LocationDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [LocationImage(), SizedBox(height: 32)],
        ),
      ),
    );
  }
}
