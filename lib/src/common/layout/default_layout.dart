import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout(
      {super.key,
      required this.title,
      required this.body,
      this.bottomNavigationBar});
  final String title;
  final Widget body;
  final BottomNavigationBar? bottomNavigationBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
