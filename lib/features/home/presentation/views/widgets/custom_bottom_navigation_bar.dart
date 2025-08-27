import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  static const routeName = "/bottomNav";

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> screens = const [
    HomeView(),
    CustomContainerTest(text: "Ticket Screen"),
    CustomContainerTest(text: "Favorite Screen"),
    CustomContainerTest(text: "Profile Screen"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 2,
              blurRadius: 25,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          child: NavigationBar(
            indicatorColor: Colors.transparent,
            height: 72,
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.assetsImagesHome,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 0
                        ? ColorData.kPrimaryColor
                        : ColorData.kNavIconColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: '',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.assetsImagesTicket,
                  height: 18,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 1
                        ? ColorData.kPrimaryColor
                        : ColorData.kNavIconColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: "",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.assetsImagesHeart,
                  height: 18,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 2
                        ? ColorData.kPrimaryColor
                        : ColorData.kNavIconColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: '',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.assetsImagesProfile,
                  height: 22,
                  width: 22,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 3
                        ? ColorData.kPrimaryColor
                        : ColorData.kNavIconColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainerTest extends StatelessWidget {
  const CustomContainerTest({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 32,
            color: Colors.black,
            fontFamily: "CircularXX",
          ),
        ),
      ),
    );
  }
}
