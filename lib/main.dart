import 'package:aspen_travel_app/core/helper/on_generate_route.dart';
import 'package:aspen_travel_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AspenTravelApp());
}

class AspenTravelApp extends StatelessWidget {
  const AspenTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
