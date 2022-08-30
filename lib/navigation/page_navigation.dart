import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigation extends StatelessWidget {
  const PageNavigation({Key? key, required this.navKey, required this.child})
      : super(key: key);

  final GlobalKey<NavigatorState> navKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => child,
        );
      },
    );
  }
}
