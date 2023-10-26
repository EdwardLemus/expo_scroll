import 'package:expo_scroll/main.dart';
import 'package:expo_scroll/view/page1.dart';
import 'package:expo_scroll/view/page2.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _item = 0;

  getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        // ignore: prefer_const_constructors
        return MyApp();
      case 1:
        return config();
      case 2:
        return able();
    }
  }

  void _SetItemDrawer(int position) {
    Navigator.pop(context);
    setState(() {
      _item = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu'),
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
                'menu de navegacion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              selected: (0 == _item),
              leading: Icon(Icons.navigate_next_sharp),
              title: Text('ScrollBar'),
              onTap: () {
                _SetItemDrawer(0);
              },
            ),
            // Divider(
            //   color: Colors.black,
            // ),
            ListTile(
              selected: (1 == _item),
              leading: Icon(Icons.navigate_next_sharp),
              title: Text('Scrollconfig'),
              onTap: () {
                _SetItemDrawer(1);
              },
            ),
            ListTile(
              selected: (2 == _item),
              leading: Icon(Icons.navigate_next_sharp),
              title: Text('ScrollAble'),
              onTap: () {
                _SetItemDrawer(2);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_item),
    );
  }

  Widget _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return MyApp();
      case 1:
        return config();
      case 2:
        return able();
      default:
        return Center(
          child: Text('Página no encontrada'),
        );
    }
  }
}
