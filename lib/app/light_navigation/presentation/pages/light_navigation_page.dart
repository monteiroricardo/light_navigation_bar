import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/light_navigation_bar.dart';

class LightNavigationPage extends StatefulWidget {
  const LightNavigationPage({Key? key}) : super(key: key);

  @override
  State<LightNavigationPage> createState() => _LightNavigationPageState();
}

class _LightNavigationPageState extends State<LightNavigationPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF1F4),
      body: Container(),
      bottomNavigationBar: LightNavigationBar(
        items: [
          LightNavigationItem(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            activeIcon: FontAwesomeIcons.house,
            style: LightNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
          LightNavigationItem(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            activeIcon: FontAwesomeIcons.chartPie,
            style: LightNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
          LightNavigationItem(
            onTap: () {
              print('object');
              setState(() {
                currentIndex = 2;
              });
            },
            activeIcon: FontAwesomeIcons.solidUser,
            style: LightNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
          LightNavigationItem(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            activeIcon: FontAwesomeIcons.gear,
            style: LightNavigationStyle(
              primaryColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
            ),
          ),
        ],
        activeMenu: currentIndex,
        animationDuration: const Duration(seconds: 0),
      ),
    );
  }
}
