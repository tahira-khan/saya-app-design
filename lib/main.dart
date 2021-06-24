import 'package:flutter/material.dart';
import 'package:saya/screens/profile_screen.dart';
import 'package:saya/screens/history_screen.dart';
import 'package:saya/screens/profile_saya_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ProfileScreen',
      routes: {
        '/ProfileScreen': (context) => ProfileScreen(),
        '/ProfileSayaScreen': (context) => ProfileSayaScreen(),
        '/HistoryScreen': (context) => HistoryScreen(),
      },
    );
  }
}
