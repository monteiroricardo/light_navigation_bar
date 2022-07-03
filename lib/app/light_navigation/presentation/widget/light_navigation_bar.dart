import 'package:flutter/material.dart';

part 'light_navigation_item.dart';
part 'light_navigation_tile.dart';
part 'light_navigation_style.dart';

class LightNavigationBar extends StatefulWidget {
  final List<LightNavigationItem> items;
  final int activeMenu;
  final Duration? animationDuration;

  const LightNavigationBar({
    super.key,
    required this.items,
    required this.activeMenu,
    this.animationDuration,
  });

  @override
  State<LightNavigationBar> createState() => _LightNavigationBarState();
}

class _LightNavigationBarState extends State<LightNavigationBar> {
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
                (e) => LightNavigationTile(
                  item: e,
                  isActive: widget.items.indexOf(e) == widget.activeMenu,
                  animationDuration: widget.animationDuration,
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
