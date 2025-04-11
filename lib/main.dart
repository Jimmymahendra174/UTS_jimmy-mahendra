import 'package:flutter/material.dart';
import 'home_page.dart';
import 'widget_showcase.dart';
import 'counter_app.dart';
import 'layout_demo.dart';
import 'buttons_showcase.dart';
import 'home_with_drawer.dart';

void main() => runApp(MySalesApp());

class MySalesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Penjualan',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MainDrawerPage(),
    );
  }
}

class MainDrawerPage extends StatefulWidget {
  @override
  _MainDrawerPageState createState() => _MainDrawerPageState();
}

class _MainDrawerPageState extends State<MainDrawerPage> {
  Widget _currentPage = HomePage();

  void _selectPage(Widget page) {
    setState(() {
      _currentPage = page;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplikasi Penjualan')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Center(
                child: Text(
                  'Menu Navigasi',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => _selectPage(HomePage()),
            ),
            ListTile(
              leading: Icon(Icons.widgets),
              title: Text('Widget Showcase'),
              onTap: () => _selectPage(WidgetShowcase()),
            ),
            ListTile(
              leading: Icon(Icons.exposure_plus_1),
              title: Text('Counter App'),
              onTap: () => _selectPage(CounterApp()),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Layout Demo'),
              onTap: () => _selectPage(LayoutDemo()),
            ),
            ListTile(
              leading: Icon(Icons.smart_button),
              title: Text('Buttons Showcase'),
              onTap: () => _selectPage(ButtonsShowcase()),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Home with Drawer'),
              onTap: () => _selectPage(HomeWithDrawer()),
            ),
          ],
        ),
      ),
      body: _currentPage,
    );
  }
}
