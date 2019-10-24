import 'package:flutter/widgets.dart';

class InheritedCounter extends InheritedWidget {
  final counterValue = ValueNotifier<int>(0);
  final inheritedTitle = 'HEY I GOT A NEW TITLE';

  InheritedCounter({Widget child}) : super(child: child ?? Container());

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static InheritedCounter of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(InheritedCounter);
}
