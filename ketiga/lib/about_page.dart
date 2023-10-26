import 'package:flutter/material.dart';
import 'package:ketiga/sidemenu.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Center(
        child:  Text('Ini adalah halaman About'),
      ),
      drawer: const Sidemenu(),
    );
  }
}