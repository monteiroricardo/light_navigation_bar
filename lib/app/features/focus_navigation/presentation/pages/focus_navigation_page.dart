import 'package:flutter/material.dart';
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
      bottomNavigationBar: const FocusNavigationWidget(),
    );
  }
}
