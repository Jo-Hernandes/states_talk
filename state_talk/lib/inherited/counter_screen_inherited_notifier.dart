import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:state_talk/inherited/inherited_notifier_counter.dart';

class CounterScreenInherited extends StatelessWidget {
  CounterScreenInherited({Key key, this.title = 'COUNTER SCREEN COM INHERITED'})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '0',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
