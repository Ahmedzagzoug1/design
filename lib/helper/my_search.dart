import 'package:flutter/material.dart';

class MySearch extends SearchDelegate<String> {
  List<String> searchList = ['first', 'second', 'third', 'fourth', 'fifth'];
  List<String> recentList = ['first', 'second', 'third'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //query text is the text that the user has entered
    List<String> results =searchList
            .where((element) => element.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return Column(
      children: [
        const Text('Results'),
        Expanded(
          child: ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(results[index]),
                onTap: () {
                  close(context, results[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You selected ${results[index]}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     List<String> suggestions =searchList
            .where((element) => element.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return Column(
      children: [
        const Text('Suggestions'),
        Expanded(
          child: ListView.builder(
            itemCount: suggestions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(suggestions[index]),
                onTap: () {
                  query = suggestions[index];
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You selected ${suggestions[index]}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
