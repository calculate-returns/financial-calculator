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
  static const calculators = ['CAGR','Absolute Return','Real Estate','Commercial','XIRR','Loan', "Break FD", "How much Downpayment"];
  @override
  Widget build(BuildContext context) {

    var appTheme = ThemeData(
        useMaterial3: true,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        //backgroundColor : Colors.indigo,
        cardColor: const Color(0xffcdf1ee),
        appBarTheme: const AppBarTheme(
          elevation: 10,
          backgroundColor: Color(0xff1e948b),
          centerTitle: false,
          titleTextStyle: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.normal,  fontFamily: "Helvetica"),
          surfaceTintColor: Color(0xffcdf1ee),

        )
    );

    return MaterialApp(
      title: 'Calculate the numbers',
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Financial Calculator',
            style: Theme.of(context).appBarTheme.titleTextStyle)
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2 ,
          children: List.generate(8,(index){
            return Card(
              elevation: 10,
              margin: const EdgeInsets.fromLTRB(12, 20 , 12 , 10),
              surfaceTintColor: const Color(0xff1e948b),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: const BorderSide(color: Color(0xff1e948b) , width: 2)
              ),
            //  color: Colors.grey,
              child: Center(
                  child: Text(
                      calculators[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal
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
