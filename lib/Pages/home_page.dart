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
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
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
            child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)?
            ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                }):Center(
                  child: CircularProgressIndicator(),
                )
                ),
        drawer: MyDrawer());
  }
}
