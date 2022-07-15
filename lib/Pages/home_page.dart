import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/Widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 17;
  final String name = "vandanshah";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text("$name's Catalog App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
                itemCount: dummyList.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: dummyList[index],
                  );
                })),
        drawer: MyDrawer());
  }
}
