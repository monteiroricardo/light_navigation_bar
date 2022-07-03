part of 'light_navigation_bar.dart';

class LightNavigationItem {
  final VoidCallback onTap;
  final IconData activeIcon;
  final IconData? inactiveIcon;
  final LightNavigationStyle style;

  const LightNavigationItem({
    required this.onTap,
    required this.activeIcon,
    this.inactiveIcon,
    required this.style,
  });
}
