import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/themes.dart';
import 'package:flutter_application_1/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Vx.blue800,
        elevation: 0.0,
      ),
      backgroundColor: MyTheme.cream,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl4.blue800.make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Vx.blue800,
                ),
              shape: MaterialStateProperty.all(
                StadiumBorder(),
                )
              ),
            child: "Add to cart".text.xl.make(),
            ).wh(150.0, 50.0)
          ],
          ).p32(),
        
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)).h32(context),
            Expanded(child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [ 
                    catalog.name.text.xl2.color(Vx.blue800).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Sadipscing consetetur clita labore aliquyam clita justo justo duo, clita sed eirmod no amet sed stet sed, sanctus no eirmod."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
                  ]
                ).py64(),
              ),
            )
          )
      
        ],
          ),
      ),


    );
  }
}
