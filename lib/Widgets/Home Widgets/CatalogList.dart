import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page(detail).dart';
import 'package:flutter_application_1/Widgets/Home%20Widgets/CatalogImage.dart';
import 'package:flutter_application_1/Widgets/themes.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPos(index);
        return InkWell(
          onTap: () => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => 
              HomeDetailPage(catalog: catalog))),
          child: CatalogItem(catalog: catalog),
          );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(context.primaryColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).color(context.accentColor).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          context.theme.buttonColor,
                        ),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Add to cart".text.make(),
                  )
                ],
              ).pOnly(right: 4.0)
            ],
          ))
        ],
      ),
    ).white.rounded.color(context.cardColor).square(150).make().py16();
  }
}
