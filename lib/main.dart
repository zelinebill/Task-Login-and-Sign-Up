import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_up.dart';
import 'start.dart';
import 'successful.dart';
import 'successful2.dart';
import 'Forgotten_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/start',
      routes: {
        '/login': (context) => LoginPage(),
        '/sign_up': (context) => SignUpPage(),
        '/start': (context) => StartPage(),
        '/successful': (context) =>SuccessfulPage(),
        '/successful2':(context) => Successful2Page(),
        '/forgotten_password':(context) => ForgottenPasswordPage()
      },
    );
  }
}
