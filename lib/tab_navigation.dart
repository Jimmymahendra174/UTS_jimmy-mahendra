import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Kategori Produk'),
          bottom: TabBar(tabs: [Tab(text: 'Elektronik'), Tab(text: 'Fashion')]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Daftar produk elektronik di sini')),
            Center(child: Text('Daftar produk fashion di sini')),
          ],
        ),
      ),
    );
  }
}
