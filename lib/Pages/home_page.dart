import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/Widgets/Home Widgets/CatalogHeader.dart';
import 'package:flutter_application_1/Widgets/Home Widgets/CatalogList.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 17;

  final String name = "vandanshah";
  final String url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";

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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        floatingActionButton: VxBuilder(
            mutations: const {AddMutation, RemoveMutation},
            builder: (ctx, _, __) => FloatingActionButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, MyRoutes.cartRoute),
                  backgroundColor: context.theme.buttonColor,
                  child: Icon(
                    CupertinoIcons.cart,
                    color: Colors.white,
                  ),
                ).badge(
                    color: Vx.gray200,
                    size: 22,
                    count: _cart.items.length,
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold))),
        backgroundColor: context.canvasColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator(
                    backgroundColor: context.canvasColor,
                  ).centered().expand(),
              ],
            ),
          ),
        ));
  }
}
