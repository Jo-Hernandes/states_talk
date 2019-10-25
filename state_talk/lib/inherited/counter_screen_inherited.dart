import 'package:flutter/material.dart';
import 'package:state_talk/inherited/inherited_counter.dart';
import 'package:state_talk/inherited/inherited_counter_body.dart';

class CounterScreenInherited extends StatefulWidget {
  CounterScreenInherited({Key key, this.title = 'COUNTER SCREEN COM INHERITED'})
      : super(key: key);

  final String title;

  @override
  _CounterScreenInheritedState createState() => _CounterScreenInheritedState();
}

class _CounterScreenInheritedState extends State<CounterScreenInherited> {
  var count = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InheritedCounter(
        counterValue: count,
        child: CounterBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count.value += 2;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
