import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 this initializes material design behavior and the strting screen
        title: 'Week 1 - All 8 Widgets',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HomeScreen(),
      );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 defines the app bar and main structure
        appBar: AppBar( // #3 this display the app title
          title: const Text('All Widgets'),
        ),
        body: Center( // #7 position widget at the center of the screen
          child: Container( // #8 this apply spacing and contain other widgets
            padding: const EdgeInsets.all(20),
            child: Column( // #6 places widgets vertically 
              children: [
                Row( // #5 arranges widgets horizntally 
                  children: [
                    const Icon(Icons.star),
                    const Text('Flutter'), // #4 shows a visible text labeL
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
