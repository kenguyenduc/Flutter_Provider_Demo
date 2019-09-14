import 'package:flutter/material.dart';
import 'package:provider_demo/Screens.dart';
import 'package:provider_demo/demo_change_notifier_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
// This widget is the root of your application.
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DEMO PROVIDER",
      //home: HomePageScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Provider"),
        ),
        //body: BasicProvider(),
        body: DemoChangeNotifierProvider(),
      ),
    );
  }
}
