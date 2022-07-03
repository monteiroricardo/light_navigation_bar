import 'package:flutter/material.dart';
import 'package:focus_navigation/app/focus_navigation/presentation/pages/focus_navigation_page.dart';

void initApplication() {
  runApp(
    const App(),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FocusNavigationPage(),
    );
  }
}
