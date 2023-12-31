import 'package:flutter/material.dart';
import 'package:kedua/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Produk"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHarga(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode produk"),
      controller: _kodeProdukController,
    );
  }

  _textboxNamaProduk(){
    return TextField(
      decoration: const InputDecoration(labelText: "Kode produk"),
      controller: _namaProdukController,
    );
  }

  _textboxHarga(){
    return TextField(
      decoration: const InputDecoration(labelText: "Kode produk"),
      controller: _hargaProdukController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: (){
          String kodeProduk = _kodeProdukController.text;
          String namaProduk = _namaProdukController.text;
          int harga = int.parse(_hargaProdukController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                kodeProduk: kodeProduk,
                namaProduk: namaProduk,
                hargaProduk: harga,
              )));
    }, child: const Text('Simpan'));
  }
}