import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_amenities.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_book.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_image.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_information.dart';
import 'package:flutter/material.dart';

class LocationDetailsViewBody extends StatelessWidget {
  const LocationDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            LocationImage(),
            SizedBox(height: 32),
            LocationInformation(),
            SizedBox(height: 32),
            LocationAmenities(),
            SizedBox(height: 29),
            LocationBook(),
          ],
        ),
      ),
    );
  }
}
