import 'package:aspen_travel_app/features/home/presentation/views/widgets/location_details_view.dart';
import 'package:aspen_travel_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case CustomBottomNavigationBar.routeName:
      return MaterialPageRoute(
        builder: (context) => const CustomBottomNavigationBar(),
      );
    case LocationDetailsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LocationDetailsView(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
