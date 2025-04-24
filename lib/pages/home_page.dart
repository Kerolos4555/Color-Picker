import 'package:color_picker/widgets/circle.dart';
import 'package:color_picker/widgets/square.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? selectedColor;
  List<Color?> squareColors = List.filled(10, null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Color Picker",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        selectedColor = getCircleColor(index);
                      },
                    );
                  },
                  child: Circles(
                    color: getCircleColor(index),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () {
                    if (selectedColor != null) {
                      setState(
                        () {
                          squareColors[index] = selectedColor;
                        },
                      );
                    }
                  },
                  child: Squares(
                    color: squareColors[index],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    squareColors = List.filled(10, null);
                  },
                );
              },
              child: const Text(
                "Clear",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getCircleColor(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.green;
      case 2:
        return Colors.blue;
      case 3:
        return Colors.yellow;
      case 4:
        return Colors.purple;
      case 5:
        return Colors.brown;
    }
    return Colors.black;
  }
}
