import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:product/service/product_service.dart';
import 'package:product/screen/out_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductService _productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Produk"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        backgroundColor: Colors.lime,
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const ProductList()));
          },
          icon: const Icon(Icons.arrow_back)),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<Map<String, String>>(
              stream: _productService.getProductList(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Map<String, String> items = snapshot.data!;
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final key = items.keys.elementAt(index);
                      final item = items[key];
                      return ListTile(
                        title: Text(item!),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            _productService.removeProductItem(key);
                          },
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
