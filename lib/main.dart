import 'package:design1/pages/e_commerce_page.dart';
import 'package:design1/pages/my_test_page.dart';
import 'package:design1/pages/quran.dart';
import 'package:design1/resources/dark_mode.dart';
import 'package:design1/pages/home.dart';
import 'package:design1/pages/login_page.dart';
import 'package:design1/widgets/custom_selectable_text.dart';
import 'package:design1/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

void main() {
  debugRepaintRainbowEnabled = true;
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
            home: Ayah(),
          );
        
  }
}
