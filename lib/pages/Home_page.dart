import 'package:classico/Models/catalog.dart';
import 'package:classico/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/items_widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // the code before calling the buil function firtst comes to init state
  // we need to load the data from the json file to something  so that we can display
  @override
  void initState() {
    super.initState();
    // make a function to load data
    loaddata();
  }

  loaddata() async {
    // async is added as root bundle returns a future string
    // first pubsec.yaml me assets/files/ add karo
    // we have something called root bundle
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    // catalog json ke andar puri json daal di
    // catalog json is encode in the form of string
    var decodeddata = jsonDecode(catalogjson);
    // from decoced data extract all the products
    var productdata = decodeddata["products"];

    // make a list of all items
    CatalogModel.items = List.from(productdata)
        .map<Item>(
          (item) => Item.fromMap(item),
        )
        .toList();

    // isse aapka ek product aa jayega sabko call karne ke liye setstate call karna padega 
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const String apkname = "CataLog App";
    // final dummylist = List.generate(4, (index) => CatalogModel.items[0]);
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
          return itemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
