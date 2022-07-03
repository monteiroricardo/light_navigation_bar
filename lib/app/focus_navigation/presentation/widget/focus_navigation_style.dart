part of 'focus_navigation_bar.dart';

class FocusNavigationStyle {
  final Color primaryColor;
  final Color inactiveColor;
  final Color? shadowColor;
  final Color? barColor;
  FocusNavigationStyle({
    required this.primaryColor,
    required this.inactiveColor,
    this.shadowColor,
    this.barColor,
  });
}
