import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Me",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Me"),
        ),
        body: Center(
          child: Text(("Me")),
        ),
      ),
    );
  }
}
