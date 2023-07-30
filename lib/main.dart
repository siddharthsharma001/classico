import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      home: Material(
        child: Center(
          child: Text("30 days of code of flutter"),
        ),
      )
    );
  }
}
