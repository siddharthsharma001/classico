import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final int days = 1000;

  final String name = "web Development";

  @override
  Widget build(BuildContext context) {
    const String apkname = "CataLog App";


    return Scaffold(
      // app title and menu
      appBar: AppBar(
        title: const Text(apkname),
      ),

      // main / body of all 
      body: Center(
        child: Text("$days days of code of $name"),
      ),

      // used to make the drawer menu
      drawer: Drawer(),
    );
  }
}
