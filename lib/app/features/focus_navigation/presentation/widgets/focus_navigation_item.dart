import 'package:flutter/material.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/style/focus_navigation_style.dart';

class FocusNavigationItem extends StatefulWidget {
  final VoidCallback onTap;
  final IconData activeIcon;
  final IconData inactiveIcon;
  final bool isActive;
  final FocusNavigationStyle focusNavigationStyle;

  const FocusNavigationItem(
      {super.key,
      required this.onTap,
      required this.activeIcon,
      required this.inactiveIcon,
      required this.isActive,
      required this.focusNavigationStyle});

  @override
  State<FocusNavigationItem> createState() => _FocusNavigationItemState();
}

class _FocusNavigationItemState extends State<FocusNavigationItem> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
