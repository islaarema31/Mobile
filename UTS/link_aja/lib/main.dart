import 'package:flutter/material.dart';
import 'package:link_aja/app/widget/homepage.dart';
import 'package:link_aja/app/widget/history.dart';
import 'package:link_aja/app/widget/inbox.dart';
import 'package:link_aja/app/widget/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Ganti initial route menjadi '/splash'
      routes: {
        '/splash': (context) => SplashScreen(), // Tambahkan rute untuk SplashScreen
        '/home': (context) => HomePage(),
        '/history': (context) => HistoryPage(),
        '/inbox': (context) => InboxPage(),
      },
    );
  }
}
