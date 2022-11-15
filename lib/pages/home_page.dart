import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state1/pages/counter_provider.dart';
import 'package:flutter_state1/pages/product_list_repository.dart';
import 'package:flutter_state1/pages/product_repository.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    final product = ref.watch(productProvider);
    final productList = ref.watch(productListProvider);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${productList[index].name}"),
                  subtitle: Text("${productList[index].price}"),
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final p1 = ref.read(productListProvider.notifier);
                //p1.state = [...p1.state, Product(4, "고구마", 5000)];
                p1.state = [...p1.state, Product(4, "고구마", 7000)];
              },
              child: Text(
                "상품추가",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              )),
          Text(
            "${count}",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
          ),
          ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).increment();
              },
              child: Text(
                "클릭",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              )),
        ],
      ),
    );
  }
}
