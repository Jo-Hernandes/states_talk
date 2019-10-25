import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_talk/inherited/inherited_counter.dart';

class CounterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '${InheritedCounter.of(context).inheritedTitle}',
          ),
          ValueListenableBuilder(
              valueListenable: InheritedCounter.of(context).counterValue,
              builder: (context, value, _) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.display1,
                );
              }),
        ],
      ),
    );
  }
}
