import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de ScrollConfiguration'),
        ),
        body: ScrollConfiguration(
          behavior:
              ScrollBehavior(), // 1. Comportamiento de desplazamiento personalizado
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Elemento $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
