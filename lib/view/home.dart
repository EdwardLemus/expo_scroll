import 'package:flutter/material.dart';
import 'package:expo_scroll/view/drawer.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final MyDrawer drawer;

  MyHomePage({Key? key, required this.title, required this.drawer})
      : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _items = List.generate(50, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: widget.drawer,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false, // Desactivar los scrollbars predeterminados
        ),
        child: ListView(
          children: _items.map((item) => ListTile(title: Text(item))).toList(),
        ),
      ),
    );
  }
}
