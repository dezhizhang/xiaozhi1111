import 'dart:ui';

import 'package:flutter/material.dart';
import './bottomsheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      routes: {
        '/bottomsheet':(context) => BottomSheetPage(),
      },
      // routes: {
      //   "/alertDialog":(context) => AlertDialogPage(),
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('alertAialog'),
            onPressed: () {
              Navigator.pushNamed(context, '/alertDialog');
            },
          ),
          RaisedButton(
            child: Text('bottomsheet'),
            onPressed: () {
              Navigator.pushNamed(context, '/bottomsheet');
            },
          )
        ],
      ),
    );
  }
}