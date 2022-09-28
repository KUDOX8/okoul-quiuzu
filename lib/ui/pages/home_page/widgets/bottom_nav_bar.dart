import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
      child: NavigationBar(
        height: 75.h,
        backgroundColor: Colors.amber,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined,
                  color: isSelected[0] ? black : grey),
              label: ''),
          NavigationDestination(
              icon: Icon(Icons.emoji_events_outlined,
                  color: isSelected[1] ? black : grey),
              label: ''),
          NavigationDestination(
              icon: Icon(Icons.person_outline,
                  color: isSelected[2] ? black : grey),
              label: ''),
        ],
        onDestinationSelected: (index) async {
          _currentIndex = index;
          isSelected = [false, false, false];
          isSelected[index] = true;
          setState(() {});
        },
        selectedIndex: _currentIndex,
      ),
    );
  }
}
