import 'package:flutter/material.dart';
import 'screens/community.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityScreen(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(247, 243, 240, 1),
      ),
    );
  }
}

