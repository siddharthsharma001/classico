import 'package:classico/Models/catalog.dart';
import 'package:classico/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/items_widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const String apkname = "CataLog App";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          apkname,
          textScaleFactor: 1.3,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          // item builder will give us a index or position
          // catalog model ke andar ek hi element hai aur uska index 0 hai
          return itemWidget(item: CatalogModel.items[index],);
        },
      ),
      drawer: const MyDrawer(),
    );
  }
  
  
}
