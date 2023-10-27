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
            return ListView(
              children: List.generate(50, (index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
