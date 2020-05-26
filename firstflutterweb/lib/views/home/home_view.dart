import 'package:firstflutterweb/widgets/call_to_action/call_to_action.dart';
import 'package:firstflutterweb/widgets/centered_view/centered_view.dart';
import 'package:firstflutterweb/widgets/course_details/course_details.dart';
import 'package:firstflutterweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(children: [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction('Join Course'),
                  ),
                )
              ]),
            )
        ],),
      )
    );
  }
}