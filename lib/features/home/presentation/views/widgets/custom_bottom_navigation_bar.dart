import 'package:aspen_travel_app/core/utils/assets.dart';
import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:aspen_travel_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    HomeView(),
    HomeView(),
    HomeView(),
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
                icon: _selectedIndex == 1
                    ? const FaIcon(
                        FontAwesomeIcons.ticket,
                        color: ColorData.kPrimaryColor,
                      )
                    : SvgPicture.asset(
                        Assets.assetsImagesTicket,
                        height: 22,
                        width: 28,
                      ),
                label: "",
              ),
              NavigationDestination(
                icon: _selectedIndex == 2
                    ? const FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: ColorData.kPrimaryColor,
                      )
                    : SvgPicture.asset(
                        Assets.assetsImagesHeart,
                        height: 22,
                        width: 28,
                      ),
                label: '',
              ),
              NavigationDestination(
                icon: _selectedIndex == 3
                    ? const FaIcon(
                        FontAwesomeIcons.solidUser,
                        color: ColorData.kPrimaryColor,
                      )
                    : SvgPicture.asset(
                        Assets.assetsImagesProfile,
                        height: 22,
                        width: 22,
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
