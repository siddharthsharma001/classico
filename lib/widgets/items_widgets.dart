import 'package:classico/Models/catalog.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class itemWidget extends StatelessWidget {
  const itemWidget({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
          child: ListTile(
            onTap: () {
              print("item ${item.name} pressed");
            },
            leading: Image.network(item.image),
            title: Text(item.name),
            subtitle: Text(item.desc),
            trailing: Text(
              "₹ ${item.price}/-",
              textScaleFactor: 1.1,
              style: const TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      
    );
  }
}
