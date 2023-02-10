import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<Tab> tabs = [
    const Tab(
      text: "Messages",
    ),
    const Tab(
      text: "Stories",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: AppColors.appDark,
      indicatorPadding: const EdgeInsets.all(8),
      isScrollable: true,
      overlayColor: const MaterialStatePropertyAll(
        Colors.transparent,
      ),
      labelStyle: const TextStyle(
        fontSize: 18,
      ),
      tabs: tabs,
    );
  }
}
