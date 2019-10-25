import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_talk/provider/counter_model.dart';

class CounterScreenProvider extends StatelessWidget {
  CounterScreenProvider({Key key, this.title = 'COUNTER SCREEN PROVIDER'})
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
            Consumer<CounterModel>(
              builder: (_, model, __) => Text(
                '${model.counterValue}',
                style: Theme.of(context).textTheme.display1,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Consumer<CounterModel>(
        builder: (_, model, __) => FloatingActionButton(
          onPressed: model.addToCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
