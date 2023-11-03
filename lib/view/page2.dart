import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class able extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrollable Example'),
        ),
        body: Scrollable(
          viewportBuilder: (BuildContext context, ViewportOffset offset) {
            return Column(
              children: [
                Container(
                  height: 200, // Altura de la primera lista
                  child: ListView.builder(
                    itemCount: 20, // Número de elementos en la primera lista
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('List 1 Item $index'),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20), // Espacio vertical entre las listas
                Container(
                  height: 200, // Altura de la segunda lista
                  child: ListView.builder(
                    itemCount: 15, // Número de elementos en la segunda lista
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('List 2 Item $index'),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
