import 'package:design1/helper/my_search.dart';
import 'package:design1/resources/color.dart';
import 'package:design1/resources/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {

showSearch(context: context,delegate: MySearch());            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Container(
            height: 500,
            width: 500,
            color: Colors.blue[200],
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Provider.of<ThemeProvider>(context)
                          .lightScheme
                          .primary,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        
                        Provider.of<ThemeProvider>(context,listen: false)
                            .setDarkScheme(darkColorScheme);
                      },
                      child: const Text('Dark'),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Provider.of<ThemeProvider>(context)
                          .lightScheme
                          .onPrimary,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Provider.of<ThemeProvider>(context,listen: false)
                            .setLightScheme(lightColorScheme);
                      },
                      child: const Text('Light'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
