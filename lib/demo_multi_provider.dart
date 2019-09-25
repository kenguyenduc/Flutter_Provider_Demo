import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ChangeNotifierProvider
class Counter1 with ChangeNotifier {
  int _count = 0;

  int get count => _count;
  increment() {
    _count++;
    notifyListeners();
  }
}

class Counter2 with ChangeNotifier {
  int _count = 10;
  int get count => _count;
  increment() {
    _count++;
    notifyListeners();
  }
}

class DemoMultipleProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Counter1()),
        ChangeNotifierProvider(
          builder: (_) => Counter2(),
        ),
      ],
      child: TestWidget2(),
    );
  }
}

class TestWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter1 counter1 = Provider.of<Counter1>(context);
    Counter2 counter2 = Provider.of<Counter2>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              'Count1 = ${counter1.count.toString()} \n Count2 = ${counter2.count.toString()}'),
          RaisedButton(
            onPressed: () {
              counter1.increment();
              counter2.increment();
            },
            child: Text(
              "Increment",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

////////////////// DEMO 2 /////////////////
///sử dụng kiểu value: các class oject không được kế thừa từ ChangeNotifier
///with mang ý nghĩa gộp code hơn là kế thừa
///
class Counter3 {
  int _count = 0;
  int get count => _count;

  increment() {
    _count++;
  }
}

class Counter4 {
  int _count = 0;
  int get count => _count;

  increment() {
    _count++;
  }
}

class DemoMultipleProvider2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Counter3>.value(value: Counter3()),
        Provider<Counter4>.value(value: Counter4()),
      ],
      child: TestWidget2(),
    );
  }
}

class TestWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter3 counter3 = Provider.of<Counter3>(context);
    Counter4 counter4 = Provider.of<Counter4>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              'Count3 = ${counter3.count.toString()} \n Count4 = ${counter4.count.toString()}'),
          RaisedButton(
            onPressed: () {
              counter3.increment();
              counter4.increment();
            },
            child: Text(
              "Increment",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
