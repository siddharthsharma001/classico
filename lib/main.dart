import 'package:flutter/material.dart';

import 'pages/Home_page.dart';
import 'pages/login_page.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: loginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),

      initialRoute: "/Homepage",
      routes: {
        "/Homepage" :(context) => Homepage(),
        "/loginpage" :(context) => loginPage(),
      },
    );
  }
}
