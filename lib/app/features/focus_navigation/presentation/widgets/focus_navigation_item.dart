import 'package:flutter/material.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/style/focus_navigation_style.dart';

class FocusNavigationItem extends StatefulWidget {
  final VoidCallback onTap;
  final IconData activeIcon;
  final IconData? inactiveIcon;
  final bool isActive;
  final FocusNavigationStyle focusNavigationStyle;

  const FocusNavigationItem(
      {super.key,
      required this.onTap,
      required this.activeIcon,
      this.inactiveIcon,
      required this.isActive,
      required this.focusNavigationStyle});

  @override
  State<FocusNavigationItem> createState() => _FocusNavigationItemState();
}

class _FocusNavigationItemState extends State<FocusNavigationItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.isActive
          ? BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  widget.focusNavigationStyle.shadowColor?.withOpacity(0.2) ??
                      widget.focusNavigationStyle.primaryColor.withOpacity(0.2),
                  widget.focusNavigationStyle.shadowColor?.withOpacity(0.01) ??
                      widget.focusNavigationStyle.primaryColor
                          .withOpacity(0.01),
                ],
              ),
            )
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            widget.isActive
                ? widget.activeIcon
                : widget.inactiveIcon ?? widget.activeIcon,
            color: widget.isActive
                ? widget.focusNavigationStyle.primaryColor
                : widget.focusNavigationStyle.inactiveColor,
          ),
          const Spacer(),
          Container(
            decoration: widget.isActive
                ? BoxDecoration(
                    color: widget.focusNavigationStyle.barColor ??
                        widget.focusNavigationStyle.primaryColor,
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                  )
                : null,
            width: 50,
            height: 5,
          )
        ],
      ),
    );
  }
}
