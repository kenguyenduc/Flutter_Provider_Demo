import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter {
  final ValueNotifier<int> valueNotifier = ValueNotifier(0);
}

class DemoValueListenable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Counter>(
      builder: (context) => Counter(),
      child: Consumer<Counter>(builder: (context, counter, child) {
        return ValueListenableProvider<int>.value(
            value: counter.valueNotifier,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DemoConsumerWidget(),
                  OtherWidget(),
                ],
              ),
            ));
      }),
    );
  }
}

class DemoConsumerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<int>(
      builder: (context, value, child) {
        return Text(
          value.toString(),
          style: TextStyle(fontSize: 30),
        );
      },
    );
  }
}

class OtherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          final counter = Provider.of<Counter>(context);
          counter.valueNotifier.value++;
        },
        child: Text("Increment", style: TextStyle(fontSize: 20)));
  }
}
