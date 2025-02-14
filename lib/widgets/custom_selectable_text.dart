import 'package:flutter/material.dart';

class CustomSelectableText extends StatelessWidget {
  final String first;
 final  String? second;
 final  String? third;

  const CustomSelectableText({
    super.key,
    required this.first,
    this.second,this.third
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      onTap: () {
        print('pressed');
      },
       TextSpan(
        text:first,       style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: second,      style: TextStyle(color: Colors.teal),
          ),
         
          TextSpan(
            text: third,
            style: TextStyle(color: Colors.teal),
          ),
        ],
      ),
    );
  }
}
