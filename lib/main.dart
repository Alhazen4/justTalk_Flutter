import 'package:flutter/material.dart';
import 'package:just_talk/model/other_accounts.dart';
import 'package:just_talk/Homepage.dart';
import 'package:just_talk/FirstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JustTalk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: FirstPage(text: ''),
        ),
      ),
    );
  }
}
