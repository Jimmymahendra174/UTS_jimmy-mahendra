import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Center(child: Text('Baju keranjang 1')),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Center(child: Text('Celana keranjang 2')),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('Sepatu keranjang 3')),
          ),
        ),
      ],
    );
  }
}
