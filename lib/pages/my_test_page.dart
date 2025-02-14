import 'package:design1/widgets/custom_clip_path.dart';
import 'package:design1/widgets/custom_repaint_boundary.dart';
import 'package:flutter/material.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CustomRepaintBoundary()),
    );
  }
}