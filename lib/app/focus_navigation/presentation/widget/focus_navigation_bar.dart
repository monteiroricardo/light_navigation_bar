import 'package:flutter/material.dart';

part 'focus_navigation_item.dart';
part 'focus_navigation_tile.dart';
part 'focus_navigation_style.dart';

class FocusNavigationBar extends StatefulWidget {
  final List<FocusNavigationItem> items;
  final int activeMenu;

  const FocusNavigationBar({
    super.key,
    required this.items,
    required this.activeMenu,
  });

  @override
  State<FocusNavigationBar> createState() => _FocusNavigationBarState();
}

class _FocusNavigationBarState extends State<FocusNavigationBar> {
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
