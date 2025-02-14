import 'package:flutter/material.dart';

class Datasearch extends SearchDelegate {
  List names = [
    'Ahmed',
    'Ali',
    'Khaled',
    'Ebrahim',
    'Mohmed',
    'Mahmoud',
    'Mansor'
  ];
  String quary = '';
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        onPressed: () {
          quary = '';
        },
        icon: const Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return const Text('data');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filters = [
      ...names.where(
        (element) => element.startsWith(quary),
      )
    ];

    // TODO: implement buildSuggestions
    return ListView();
  }
}
