import 'package:flutter/widgets.dart';

class InheritedCounter extends InheritedWidget {
  final counterValue;
  final inheritedTitle = 'HEY I GOT A NEW TITLE';

  InheritedCounter({this.counterValue, Widget child})
      : super(child: child ?? Container());

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) =>
      oldWidget.counterValue != counterValue;

  static InheritedCounter of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(InheritedCounter);
}
