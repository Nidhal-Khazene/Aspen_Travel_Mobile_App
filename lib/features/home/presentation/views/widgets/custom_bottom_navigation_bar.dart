import 'package:aspen_travel_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});
  static const routeName = "BottomNavigationBar";

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> screens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: const []),
      body: const HomeView(),
    );
  }
}
