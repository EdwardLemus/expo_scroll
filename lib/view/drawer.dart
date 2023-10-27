import 'package:expo_scroll/main.dart';
import 'package:expo_scroll/view/page1.dart';
import 'package:expo_scroll/view/page2.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedItem = 0;

  void _selectItem(int position) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = position;
    });
  }

  List<Widget> _drawerItems = [
    MyApp(),
    config(),
    able(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
              child: Text(
                'Menu de Navegación',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _buildDrawerItem(0, Icons.navigate_next_sharp, 'ScrollConfig'),
            _buildDrawerItem(1, Icons.navigate_next_sharp, 'ScrollBar'),
            _buildDrawerItem(2, Icons.navigate_next_sharp, 'ScrollAble'),
          ],
        ),
      ),
      body: _drawerItems[_selectedItem],
    );
  }

  Widget _buildDrawerItem(int position, IconData icon, String title) {
    return ListTile(
      selected: (position == _selectedItem),
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        _selectItem(position);
      },
    );
  }
}
