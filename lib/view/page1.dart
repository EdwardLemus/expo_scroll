import 'package:flutter/material.dart';

class config extends StatelessWidget {
  final List<String> _items = List.generate(50, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(
              Colors.red), // Cambia el color del scrollbar
          isAlwaysShown: true, // Muestra el scrollbar siempre
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrollbar Color'),
        ),
        body: Scrollbar(
          thickness: 100,
          radius: const Radius.circular(10),
          child: ListView(
            children:
                _items.map((item) => ListTile(title: Text(item))).toList(),
          ),
        ),
      ),
    );
  }
}
