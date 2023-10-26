import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class able extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollable(
          // Widget Scrollable
          viewportBuilder: (BuildContext context, ViewportOffset position) {
            return SingleChildScrollView(
              // Widget desplazable
              child: Column(
                children: List.generate(20, (index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
