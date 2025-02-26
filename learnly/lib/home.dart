import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> page=[
    Container()
  ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("settings"),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icon.home.bold),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icon.setting_bold),
          label: "settings",
        ),
      ]),
    );
  }
}
