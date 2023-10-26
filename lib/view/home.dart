import 'package:expo_scroll/view/drawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required MyDrawer drawer});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(100, (index) {
              return ListTile(
                title: Text('Elemento $index'),
              );
            }),
          ),
        ),
      ),
    );
  }
}
