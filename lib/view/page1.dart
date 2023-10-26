import 'package:flutter/material.dart';

class config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ScrollConfiguration(
          behavior: BasicScrollBehavior(), // Usar BasicScrollBehavior aquí
          child: ListView.builder(
            itemCount: 30,
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

class BasicScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return ClampingScrollPhysics(); // Utilizar ClampingScrollPhysics como física básica
  }
}
