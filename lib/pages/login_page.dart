import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),

      body: const Center(

        child: Text("Login here" , 


          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.blue,
          ),


        ),

      ),
      drawer: const Drawer(),
      
    );
  }
}