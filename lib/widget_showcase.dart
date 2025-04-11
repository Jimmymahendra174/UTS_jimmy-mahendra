import 'package:flutter/material.dart';

class WidgetShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Contoh Widget:', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Icon(Icons.shopping_cart, size: 50),
          SizedBox(height: 10),
          Text('Belanja Sekarang!'),
        ],
      ),
    );
  }
}
