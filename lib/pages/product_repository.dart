import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  int id;
  String name;
  int price;

  Product(this.id, this.name, this.price);
}

final productProvider =
    StateNotifierProvider<ProductRepository, Product>((ref) {
  return ProductRepository();
});

class ProductRepository extends StateNotifier<Product> {
  //데이터
  ProductRepository() : super(Product(1, "바나나", 10000));
}
