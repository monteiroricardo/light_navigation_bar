part of 'light_navigation_bar.dart';

class LightNavigationStyle {
  final Color primaryColor;
  final Color inactiveColor;
  final Color? shadowColor;
  final Color? barColor;
  LightNavigationStyle({
    required this.primaryColor,
    required this.inactiveColor,
    this.shadowColor,
    this.barColor,
  });
}
