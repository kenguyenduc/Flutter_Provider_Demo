import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageScreenState();
}

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class HomePageScreenState extends State<HomePageScreen> {
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
