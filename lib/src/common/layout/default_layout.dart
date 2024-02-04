import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout(
      {super.key,
      required this.body,
      this.bottomNavigationBar,
      this.floatingActionButton});
  final Widget body;
  final BottomNavigationBar? bottomNavigationBar;
  final FloatingActionButton? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
