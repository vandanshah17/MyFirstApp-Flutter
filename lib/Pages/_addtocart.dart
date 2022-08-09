import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddtoCart extends StatefulWidget {
  final Item catalog;
  const AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool IsinCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!IsinCart) {
          IsinCart = IsinCart.toggle();
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: IsinCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
