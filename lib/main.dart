import 'package:bruhhh/chatmessagescreen.dart';
import 'package:bruhhh/profilescreen.dart';
import 'package:flutter/material.dart';

import 'chatscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatMssgScreen(),
    );
  }
}

