import 'package:aspen_travel_app/core/utils/color_data.dart';
import 'package:flutter/material.dart';

class CategoryChips extends StatefulWidget {
  const CategoryChips({super.key});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  int _selectedIndex = 0;

  final List<String> categories = [
    "Location",
    "Hotels",
    "Food",
    "Adventure",
    "Shopping",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // fixed height for horizontal chips
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final bool isSelected = _selectedIndex == index;

          return ChoiceChip(
            showCheckmark: false,
            label: Text(categories[index]),
            selected: isSelected,
            onSelected: (_) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Colors.white,
            selectedColor: const Color(0xFFF3F8FE),
            labelStyle: TextStyle(
              fontFamily: "CircularXX",
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
              color: isSelected
                  ? ColorData.kPrimaryColor
                  : const Color(0xFFB7B7B7),
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(33),
            ),
          );
        },
      ),
    );
  }
}
