import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

//Exposing a value
class User {
  //ko su dung extends or with changeNotifer
  String _name;
  String get name => _name;
  set name(name) => this._name = name;
}

class BasicProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = new User();
    user.name = "Messi";
    return Provider<User>.value(
      value: user,
      child: Container(
        color: Colors.white,
        child: BasicWidget(),
        ),
    );
  }
}

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          DemoConsumerWidget(),
          DemoWithoutConsumerWidget(),
        ],
      ),
    );
  }
}

class DemoConsumerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<User>(
      builder: (context, user, child) => Text(user.name),
    );
  }
}

class DemoWithoutConsumerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return Container(
      child: Text(user.name, style: TextStyle(color: Colors.yellow,fontSize: 100),),
    );
  }
}
