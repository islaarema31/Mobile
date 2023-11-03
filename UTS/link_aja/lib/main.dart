import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:link_aja/app/widget/homepage.dart';
import 'package:link_aja/app/widget/history.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomePage(),
        '/history':(context) => HistoryPage(),
      },
    );
  }
}
