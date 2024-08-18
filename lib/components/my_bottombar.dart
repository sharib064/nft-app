import 'package:flutter/material.dart';

class MyBottombar extends StatelessWidget {
  final void Function(int)? onTap;
  final int index;
  const MyBottombar({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: Colors.grey[100],
      unselectedItemColor: Colors.grey[400],
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildBottomNavigationBarItem(Icons.home_outlined, "HOME", 0),
        _buildBottomNavigationBarItem(
            Icons.notifications_outlined, "NOTIFICATIONS", 1),
        _buildBottomNavigationBarItem(Icons.favorite_outline, "FAVORITE", 2),
        _buildBottomNavigationBarItem(Icons.person_outline, "INFO", 3),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData iconData, String label, int itemIndex) {
    return BottomNavigationBarItem(
      icon: itemIndex == index
          ? Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.grey[500]),
            )
          : Icon(iconData),
      label: label,
    );
  }
}
