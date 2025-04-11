import 'package:flutter/material.dart';

class HomeWithDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(child: Text('Ini drawer khusus halaman ini')),
      ),
      appBar: AppBar(title: Text('Halaman dengan Drawer')),
      body: Center(child: Text('Isi Halaman Home with Drawer')),
    );
  }
}
