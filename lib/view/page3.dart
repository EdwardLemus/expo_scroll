import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollable(
          viewportBuilder: (BuildContext context, ViewportOffset position) {
            return SingleChildScrollView(
              scrollDirection:
                  Axis.horizontal, // Habilitar el desplazamiento horizontal
              child: Row(
                children: [
                  // Columna 1
                  Column(
                    children: List.generate(20, (index) {
                      return ListTile(
                        title: Text('Columna 1 - Elemento $index'),
                      );
                    }),
                  ),

                  // Columna 2
                  Column(
                    children: List.generate(20, (index) {
                      return ListTile(
                        title: Text('Columna 2 - Elemento $index'),
                      );
                    }),
                  ),

                  // Columna 3
                  Column(
                    children: List.generate(20, (index) {
                      return ListTile(
                        title: Text('Columna 3 - Elemento $index'),
                      );
                    }),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(ScrollableExample());
}
