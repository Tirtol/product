import 'dart:js';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ProductService {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('product');

  Stream<Map<String, String>> getProductList() {
    return _database.onValue.map((event) {
      final Map<String, String> items = {};
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] =
              '\nKode Produk: ${value['product code']} \nNama Produk: ${value['product name']}';
        });
      }
      return items;
    });
  }

  void addProductItem(
      String itemName1, String itemName2, context) {
    if (itemName1.isEmpty || itemName2.isEmpty) {
      const warning = SnackBar(content: Text('Produk Belum Diinput'));
      ScaffoldMessenger.of(context).showSnackBar(warning);
    } else {
      _database.push().set({
        'product code': itemName1,
        'product name': itemName2,
      });
    }
  }

  Future<void> removeProductItem(String key) async {
    await _database.child(key).remove();
  }
}
