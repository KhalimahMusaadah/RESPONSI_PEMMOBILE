import 'package:flutter/material.dart';
import 'package:ketiga/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser;
  void _loadUsername() async{
    //inisialisasi share preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //ambil username yang sudah tersimpan
    namauser = prefs.getString('Username');
    //set username on UI
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    _loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text('Ini adalah halaman user $namauser'),
      ),
      drawer: const Sidemenu(),
    );
  }
}