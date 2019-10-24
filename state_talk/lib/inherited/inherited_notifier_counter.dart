import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class InheritedNotifierCounter<int> extends InheritedNotifier {
  InheritedNotifierCounter({
    Key key,
    ChangeNotifier notifier,
    Widget child,
  }) : super(key: key, notifier: notifier, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static InheritedNotifierCounter of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(InheritedNotifierCounter);
}
