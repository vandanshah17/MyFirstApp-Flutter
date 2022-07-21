import 'package:flutter/material.dart';
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
      appBar: AppBar(),
      backgroundColor: MyTheme.cream,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl4.blue400.make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                MyTheme.orange,
                ),
              shape: MaterialStateProperty.all(
                StadiumBorder(),
                )
              ),
            child: "Buy".text.xl.make(),
            ).wh(100.0, 50.0)
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
                    catalog.name.text.xl4.color(MyTheme.orange).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
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
