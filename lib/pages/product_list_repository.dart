import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state1/pages/product_repository.dart';

final productListProvider =
    StateNotifierProvider<ProductListRepository, List<Product>>((ref) {
  return ProductListRepository();
});

class ProductListRepository extends StateNotifier<List<Product>> {
  //데이터
  ProductListRepository()
      : super([
          Product(1, "바나나", 10000),
          Product(2, "딸기", 20000),
          Product(3, "참외", 30000)
        ]);
}
