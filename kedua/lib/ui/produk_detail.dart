import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int hargaProduk;
  // ignore: use_key_in_widget_constructors
  const ProdukDetail(
    {Key? key,
      required this.kodeProduk,
      required this.namaProduk,
      required this.hargaProduk});
      
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Kode Produk: $kodeProduk"),
            Text("nama Produk: $namaProduk"),
            Text("Harga Produk: $hargaProduk")
          ],
        )
      )
    );
  }
}