import 'package:flutter/material.dart';
import 'package:reading_mockups/pages/shape_page.dart';
import 'package:reading_mockups/pages/tinder_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leitura de mockups',
      debugShowCheckedModeBanner: false,
      home: PageView(
        physics: const ClampingScrollPhysics(),
        children: const [
          ShapePage(),
          TinderPage(),
        ],
      ),
    );
  }
}
