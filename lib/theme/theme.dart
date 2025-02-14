import 'package:flutter/material.dart';

ThemeData light = ThemeData(brightness: Brightness.light,
colorScheme: ColorScheme.light(surface: Colors.grey.shade400),
primaryColor: Colors.grey.shade200,
);
ThemeData dark = ThemeData(brightness: Brightness.dark,

colorScheme: ColorScheme.dark(surface: Colors.grey.shade900),
primaryColor: Colors.grey.shade800);
