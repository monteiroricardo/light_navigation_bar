part of 'focus_navigation_bar.dart';

class FocusNavigationItem {
  final VoidCallback onTap;
  final IconData activeIcon;
  final IconData? inactiveIcon;
  final FocusNavigationStyle style;

  const FocusNavigationItem({
    required this.onTap,
    required this.activeIcon,
    this.inactiveIcon,
    required this.style,
  });
}
