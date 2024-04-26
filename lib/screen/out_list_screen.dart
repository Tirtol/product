import 'package:product/screen/product_list_screen.dart';
import 'package:product/service/product_service.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ProductList> {
  final TextEditingController _controller_1 = TextEditingController();
  final TextEditingController _controller_2 = TextEditingController();
  final ProductService _shoppingService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Produk"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        backgroundColor: Colors.lime,
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined)),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller_1,
                    decoration: InputDecoration(
                        hintText: 'Kode Produk', border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller_2,
                    decoration: InputDecoration(
                        hintText: 'Nama Produk', border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                onPressed: () {
                  _shoppingService.addProductItem(
                      _controller_1.text, _controller_2.text, context);
                  _controller_1.clear();
                  _controller_2.clear();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: const Text("Tambah Produk Baru"),
                foregroundColor: Colors.black,
                backgroundColor: Colors.lime,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
