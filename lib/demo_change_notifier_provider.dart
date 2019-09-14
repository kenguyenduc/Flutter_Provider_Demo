import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

//ChangeNotifierProvider
// bản chất implement Lítenable
// cho phép lắng nghe những thay đổi của 1 obj sẽ tương tác đén những widget
// thay đổi cần thục hiện notifyListnener()
class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  increment() {
    this._count++;
    notifyListeners();
  }
}

class DemoChangeNotifierProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      builder: (context) => Counter(),
      child: TestWidget(),
    );
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return Center(
      child: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter._count.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: () {
                counter.increment();
              },
              child: Text(
                "Increment",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
