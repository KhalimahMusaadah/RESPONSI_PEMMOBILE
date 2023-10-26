//import 'package:kedua/column_widget.dart';
import 'package:kedua/ui/produk_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      home: ProdukPage(),
    );
  }
}

