import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:product/firebase_options.dart';
import 'package:product/screen/out_list_screen.dart';
import 'package:product/screen/product_list_screen.dart';
import 'package:product/service/product_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent),
        useMaterial3: true,
      ),
      home: const ProductList(),
    );
  }
}
