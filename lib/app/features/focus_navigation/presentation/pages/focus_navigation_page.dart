import 'package:flutter/material.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/style/focus_navigation_style.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/widgets/focus_navigation_item.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/widgets/focus_navigation_widget.dart';

class FocusNavigationPage extends StatefulWidget {
  const FocusNavigationPage({Key? key}) : super(key: key);

  @override
  State<FocusNavigationPage> createState() => _FocusNavigationPageState();
}

class _FocusNavigationPageState extends State<FocusNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: FocusNavigationWidget(
        items: [
          FocusNavigationItem(
            onTap: () {},
            activeIcon: Icons.settings,
            isActive: true,
            focusNavigationStyle: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
          ),
          FocusNavigationItem(
            onTap: () {},
            activeIcon: Icons.settings,
            isActive: false,
            focusNavigationStyle: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
          ),
          FocusNavigationItem(
            onTap: () {},
            activeIcon: Icons.settings,
            isActive: false,
            focusNavigationStyle: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
          ),
          FocusNavigationItem(
            onTap: () {},
            activeIcon: Icons.settings,
            isActive: false,
            focusNavigationStyle: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
