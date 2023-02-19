class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.image);

  
}
class CatalogueItems {
  static final items = [
    Item("1", "iPhone 9", "An apple mobile which is nothing like apple", 549,
        "https://i.dummyjson.com/data/products/1/1.jpg")
  ];
}
