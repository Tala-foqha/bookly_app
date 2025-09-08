// Features/Main/presentation/views/widgets/custom_navigator_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({super.key});

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  int _currentIndex = 0; // الأيقونة الحالية

  final List<String> _icons = [
    'assets/svg/HouseSimple.svg',
    'assets/svg/MagnifyingGlass.svg',
    'assets/svg/Books.svg',
    'assets/svg/Bookmarks.svg',
    'assets/svg/Wrench.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      height: 97,
      width: 390,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(color: const Color(0xFFc8C7C7)),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(_icons.length, (index) {
          final bool isSelected = _currentIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: SvgPicture.asset(
              _icons[index],
              width: 30,
              height: 30,
              colorFilter: ColorFilter.mode(
                isSelected ? const Color(0xFF0047FF) : const Color(0xFFc6c6c6),
                BlendMode.srcIn,
              ),
            ),
          );
        }),
      ),
    );
  }
}