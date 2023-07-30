import 'package:flutter/material.dart';

import 'pages/Home_page.dart';
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // int days = 500;
    // String name = "web development";
    return const MaterialApp(
        home: Homepage()
      );
  }
}
