import 'package:flutter/material.dart';

class CounterScreenNotifier extends StatelessWidget {
  CounterScreenNotifier({Key key, this.title = 'COUNTER SCREEN NOTIFIER'})
      : super(key: key);

  final String title;
  final count = ValueNotifier(0);

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
            ValueListenableBuilder<int>(
              valueListenable: count,
              builder: (context, value, child) => Text(
                '$value',
                style: Theme.of(context).textTheme.display1,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          count.value += 1;
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
