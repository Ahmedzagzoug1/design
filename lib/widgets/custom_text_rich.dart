import 'package:flutter/material.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: 'قرأت و أوافق على ',
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: 'شروط الاستخدام ',
            style: TextStyle(color: Colors.teal),
          ),
          TextSpan(
            text: 'و ',
          ),
          TextSpan(
            text: 'سياسة الخصوصية',
            style: TextStyle(color: Colors.teal),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
