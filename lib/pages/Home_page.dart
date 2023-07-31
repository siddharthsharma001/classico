import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    final String apkname =  "CataLog App";
    
    return Scaffold(
      appBar: AppBar(
        title: Text(apkname),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days of code"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
