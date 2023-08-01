import 'package:classico/utils/routes.dart';
import 'package:classico/widgets/themes.dart';
import 'package:flutter/material.dart';

import 'pages/Home_page.dart';
import 'pages/login_page.dart';
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: loginPage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mythemes.lightTheme(context),
      darkTheme: Mythemes.darkTheme(context),

      initialRoute: myRoutes.homeRoute,

      routes: {
        myRoutes.homeRoute :(context) => const Homepage(),
        myRoutes.loginRoute :(context) => const loginPage(),
      },
    );
  }
}
