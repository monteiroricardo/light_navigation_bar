import 'package:flutter/material.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/widgets/focus_navigation_item.dart';

class FocusNavigationWidget extends StatefulWidget {
  final List<FocusNavigationItem> items;

  const FocusNavigationWidget({super.key, required this.items});

  @override
  State<FocusNavigationWidget> createState() => _FocusNavigationWidgetState();
}

class _FocusNavigationWidgetState extends State<FocusNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...widget.items,
        ],
      ),
    );
  }
}
