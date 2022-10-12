// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const calculators = ['CAGR','Absolute Return','Real Estate','Commercial','XIRR','Loan'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate the numbers',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculate your numbers'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.grey,
            elevation: 10
        ),
        body: GridView.count(
          crossAxisCount: 2 ,
          children: List.generate(6,(index){
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.grey,
              child: Center(
                  child: Text(
                      calculators[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontFamily: "Roboto"
                      )
                  )
              ),
            );
          }),
        ),
      ),
    );
  }
}



class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return const Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );
  }
}
