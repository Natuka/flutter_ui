import 'package:flutter/material.dart';
import 'package:division/division.dart';

class NAColumn extends StatelessWidget {
  final List<Widget> children;

  NAColumn({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Division(
      child: Column(
        children: children,
      ),
    );
  }
}
