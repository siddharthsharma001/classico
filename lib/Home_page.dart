
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  
  final int days = 1000;

  final String name = "web Development";


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("$days days of code of $name"),
      ),
    );
    
  }
}
