class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.image);

  factory Item.fromMap(Map<String, dynamic> map){
    return Item(
      map["id"],
      map["title"],
      map["description"],
      map["price"],
      map["thumbnail"],
    );
  }

  toMap() =>{
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "image": image
  };
}

class CatalogueItems {
  static List<Item> items = [
  ];
}
