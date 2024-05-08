class Catagory {
  String id;
  String name;
  List<Product> products;
  Catagory({required this.id, required this.name, required this.products});
}

class Product {
  String id;
  String name;
  int price;
  Product({required this.id, required this.name, required this.price});
}

class Order {
  String id;
  String name;
  List<Product> productsOrdered;
  bool IsDelivered;
  Order(
      {required this.id,
      required this.name,
      required this.productsOrdered,
      required this.IsDelivered});
}

// class UserCollection {
//   String id;
//   String name; 
// }
