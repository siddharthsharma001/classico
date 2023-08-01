import 'package:classico/Models/catalog.dart';
// import 'package:classico/widgets/drawer.dart';
import 'package:classico/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
// import '../widgets/items_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

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
    // const String apkname = "CataLog App";
    // final dummylist = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
        backgroundColor: Mythemes.creamColor,
        body: SafeArea(
          child: Material(
            elevation: 3.0,
            child: Container(
              padding: Vx.m8,
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CatalogHeader(),
                  if (CatalogModel.items.isNotEmpty)
                    Cataloglist().expand()
                  else
                    const Center(
                      child: CircularProgressIndicator(
                        color: Colors.cyan,
                      ),
                    )
                ],
              ),
            ),
          ),
        ));
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(Mythemes.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        var catalog = CatalogModel.items[index];
        return Catalogitem(
          catalog: catalog,
        );
      },
    );
  }
}

class Catalogitem extends StatelessWidget {
  final Item catalog;

  const Catalogitem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        
        children: [
          CatalogImage(
            image: catalog.image,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Mythemes.darkBluishColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              2.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Mythemes.darkBluishColor,
                        ),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        )),
                    child: "Buy".text.make(),
                  )
                ],
              ).pOnly(right: 32.0 , top: 32.0)
            ],
          ))
        ],
      ),
    ).white.rounded.square(150).make().py4();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(Mythemes.creamColor).make().p16().w40(context);
  }
}
