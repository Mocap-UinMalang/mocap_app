import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mocap_app/src/core/theme/app_color.dart';
import 'package:mocap_app/src/shared/presentation/widgets/custom_bottom_navbar.dart';

class NavigationPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavigationPage({
    super.key,
    required this.navigationShell,
    required this.scaffoldKey,
  });

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int selectedIndex = 0;

  //function to change page in Navigation Page
  void goToBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: widget.navigationShell,
      bottomNavigationBar: CustomBottomNavBar(
        navigationShell: widget.navigationShell,
        goToBranch: goToBranch,
      ),
    );
  }
}
