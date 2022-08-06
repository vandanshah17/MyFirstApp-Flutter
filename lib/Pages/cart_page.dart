import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/themes.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class cartPage extends StatelessWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: context.canvasColor,
          title: "Cart".text.color(context.primaryColor).xl2.make(),
        ),
        body: Column(
          children: [cartList().p32().expand(), Divider(), cartTotal()],
        ));
  }
}

class cartTotal extends StatelessWidget {
  const cartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "\$${_cart.totalPrice}".text.xl5.color(context.accentColor).make(),
            30.widthBox,
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: "Buying not supported yet".text.make(),
                ));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor)),
              child: "Buy".text.white.make(),
            ).w32(context)
          ],
        ));
  }
}

class cartList extends StatefulWidget {
  const cartList({Key? key}) : super(key: key);

  @override
  State<cartList> createState() => _cartListState();
}

class _cartListState extends State<cartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: (() {}),
              ),
              title: _cart.items[index].name.text.make(),
            ));
  }
}
