import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_talk/counter_builder.dart';
import 'package:state_talk/counter_screen_default.dart';
import 'package:state_talk/inherited/counter_screen_inherited.dart';
import 'package:state_talk/inherited/inherited_counter.dart';
import 'package:state_talk/notifier/counter_screen_notifier.dart';
import 'package:state_talk/provider/counter_model.dart';
import 'package:state_talk/provider/counter_screen_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterFutureBuilder(),

//      ChangeNotifierProvider<CounterModel>(
//        builder: (context) => CounterModel(),
//        child: CounterScreenProvider(),
//      ),
    );
  }
}
