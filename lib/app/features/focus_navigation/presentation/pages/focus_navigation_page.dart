import 'package:flutter/material.dart';
import 'package:focus_navigation/app/features/focus_navigation/presentation/widgets/focus_navigation_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FocusNavigationPage extends StatefulWidget {
  const FocusNavigationPage({Key? key}) : super(key: key);

  @override
  State<FocusNavigationPage> createState() => _FocusNavigationPageState();
}

class _FocusNavigationPageState extends State<FocusNavigationPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF1F4),
      body: Container(),
      bottomNavigationBar: FocusNavigationWidget(
        items: [
          FocusNavigationItem(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            activeIcon: FontAwesomeIcons.house,
            style: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
          FocusNavigationItem(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            activeIcon: FontAwesomeIcons.chartPie,
            style: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
          FocusNavigationItem(
            onTap: () {
              print('object');
              setState(() {
                currentIndex = 2;
              });
            },
            activeIcon: FontAwesomeIcons.solidUser,
            style: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
          FocusNavigationItem(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            activeIcon: FontAwesomeIcons.gear,
            style: FocusNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
        ],
        activeMenu: currentIndex,
      ),
    );
  }
}
