import 'package:color_picker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorPicker());
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
