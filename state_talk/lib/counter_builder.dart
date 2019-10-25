import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterFutureBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FUTURE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            FutureBuilder<int>(
              future: Future.delayed(Duration(seconds: 10), () => 42),
              initialData: 666,
              builder: (_, snapshot) => Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
