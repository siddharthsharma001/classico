import 'package:classico/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const String apkname = "CataLog App";

    return Scaffold(
      appBar: AppBar(
        title: const Text(apkname , textScaleFactor: 1.3, style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: const Center(
        child: Text("Welcome to 30 days of code"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
