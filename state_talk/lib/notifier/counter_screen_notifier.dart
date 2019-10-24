import 'package:flutter/material.dart';

class CounterScreenNotifier extends StatelessWidget {
  CounterScreenNotifier({Key key, this.title = 'COUNTER SCREEN NOTIFIER'})
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
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {},
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
