import 'package:flutter/material.dart';

class ButtonsShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Showcase')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
