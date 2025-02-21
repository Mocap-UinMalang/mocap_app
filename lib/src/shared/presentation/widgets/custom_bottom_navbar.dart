import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mocap_app/src/core/theme/app_color.dart';
import 'package:mocap_app/src/core/utils/constant/icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final void Function(int) goToBranch;

  const CustomBottomNavBar({
    super.key,
    required this.navigationShell,
    required this.goToBranch,
  });

  @override
  Widget build(BuildContext context) {
    final int currentIndex = navigationShell.currentIndex;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.bottomNavbarShadow,
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        iconSize: 28,
        selectedItemColor: AppColor.textAccent,
        unselectedItemColor: AppColor.textSecondary,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        onTap: (index) {
          goToBranch(index);
        },
        items: [
          _bottomNavbarItem(homeIcon, currentIndex == 0, 'Home'),
          _bottomNavbarItem(postIcon, currentIndex == 1, 'Post'),
          _bottomNavbarItem(profileIcon, currentIndex == 2, 'Profile'),
        ],
      ),
    );
  }

  // Helper BottomNavigationBarItem
  BottomNavigationBarItem _bottomNavbarItem(
    String iconPath,
    bool isSelected,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColor.textAccent : AppColor.textSecondary,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
