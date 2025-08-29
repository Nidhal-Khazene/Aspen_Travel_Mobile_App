import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_amenities.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_book.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_image.dart';
import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_information.dart';
import 'package:flutter/material.dart';

class LocationDetailsViewBody extends StatelessWidget {
  const LocationDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                const LocationImage(),
                const SizedBox(height: 32),
                const LocationInformation(),
                const SizedBox(height: 32),
                const LocationAmenities(),
                const SizedBox(height: 29),
                const LocationBook(),
                const SizedBox(height: 4),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
