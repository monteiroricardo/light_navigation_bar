import 'package:flutter/material.dart';

part 'focus_navigation_item.dart';
part 'focus_navigation_tile.dart';
part 'focus_navigation_style.dart';

class FocusNavigationWidget extends StatefulWidget {
  final List<FocusNavigationItem> items;
  final int activeMenu;

  const FocusNavigationWidget({
    super.key,
    required this.items,
    required this.activeMenu,
  });

  @override
  State<FocusNavigationWidget> createState() => _FocusNavigationWidgetState();
}

class _FocusNavigationWidgetState extends State<FocusNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...widget.items
              .map(
                (e) => FocusNavigationTile(
                  item: e,
                  isActive: widget.items.indexOf(e) == widget.activeMenu,
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
