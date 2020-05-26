import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Container( // container here only for the color
              color: Colors.red,
              child: Image.asset('assets/images/yoga-logo-crop-large.png'),
            )
          ),
          Row(
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              _NavBarItem('Classes'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
      this.title, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}