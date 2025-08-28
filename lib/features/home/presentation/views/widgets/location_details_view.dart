import 'package:flutter/material.dart';

import 'location_details_view_body.dart';

class LocationDetailsView extends StatelessWidget {
  const LocationDetailsView({super.key});
  static const routeName = "/locationDetails";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LocationDetailsViewBody());
  }
}
