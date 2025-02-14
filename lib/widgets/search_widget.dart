import 'package:design1/widgets/datasearch.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Datasearch());
              },
              icon: const Icon(
                Icons.search_off_rounded,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
