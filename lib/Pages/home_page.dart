import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/Widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 17;

  final String name = "vandanshah";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final  catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((Item) => Item.fromMap(Item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("$name's Catalog App"), 
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                })),
        drawer: MyDrawer());
  }
}
