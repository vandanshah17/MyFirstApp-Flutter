class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name, required this.desc, required this.price, required this.color,required  this.image});
}
class CatalogModel{
static final items = [
  Item(id: 1, name: "Iphone 12 Pro",desc: "12th Generation",price: 999, color: "#33505a",image: "https://img1.gadgetsnow.com/gd/images/products/additional/large/G201746_View_1/mobiles/smartphones/apple-iphone-12-pro-128-gb-pacific-blue-6-gb-ram-.jpg"),
];}