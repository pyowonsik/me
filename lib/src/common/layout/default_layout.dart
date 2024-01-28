import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout(
      {super.key, required this.body, this.bottomNavigationBar});
  final Widget body;
  final BottomNavigationBar? bottomNavigationBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
