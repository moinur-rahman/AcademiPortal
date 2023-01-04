import 'package:flutter/material.dart';

import './view/landing_page.dart';
import './view/sign_in_page.dart';
import './view/sing_up_teacher.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LandingPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => SignInPage(),
        '/sign-up-teacher': (context) => SignUpTeacher(),
      },
    );
  }
}
