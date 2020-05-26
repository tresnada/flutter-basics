import 'package:firstflutterweb/views/home/home_view.dart';
import 'package:flutter/material.dart';

// TODO: what exactly does the material.dart contain
// TODO: what is scaffold body, what has to be defined there (body, child, ...)?
// TODO: difference between stateless and stateful widget

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // The theme of the application.

        // A blue toolbar.
        primarySwatch: Colors.blue,

        // get the font from the assets to apply to the entire application
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans',
        )

        // Visual density according to the platform - the controls smaller and
        // closer together (more dense) on desktop than on mobile platforms.
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(/*title: 'Flutter Demo Home Page'*/),
    );
  }
}