import 'package:flutter/material.dart';

// TODO: CenteredView? What are other views? Where does it come from? Docu?

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
      alignment: Alignment.topCenter,
      color: Colors.green,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          // content of this view will never stretch more than 1200
          // can be passed in to modify per view
          maxWidth: 1200
        ),
        child: child,
      ),
    );
  }
}