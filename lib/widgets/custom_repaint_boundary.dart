import 'package:flutter/material.dart';

/*************  ✨ Codeium Command ⭐  *************/
class CustomRepaintBoundary extends StatefulWidget {
  @override
  _CustomRepaintBoundaryState createState() => _CustomRepaintBoundaryState();
}

class _CustomRepaintBoundaryState extends State<CustomRepaintBoundary> {
  Color color = Colors.red;
  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Builds the widget tree for the `_CustomRepaintBoundaryState`.
  ///
  /// This method returns a `RepaintBoundary` widget that wraps a `Container`.
  /// The `RepaintBoundary` is used to isolate the repainting of its child
  /// from the rest of the widget tree, which can improve performance by
  /// reducing unnecessary repaints.

/******  e5192516-6abd-46bd-affa-6a98600c633f  *******/
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepaintBoundary(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            color: color,
            height: 200,
            width: 200,
            child: const Center(
              child: Text('RepaintBoundary'),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = (color == Colors.red) ? Colors.blue : Colors.red;
            setState(() {});
          },
          child: const Text('Tap to repaint'),
        ),
      ],
    );
  }
}
