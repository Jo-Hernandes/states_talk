import 'package:flutter/material.dart';
import 'package:state_talk/inherited/inherited_counter_body.dart';

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
      body: CounterBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
