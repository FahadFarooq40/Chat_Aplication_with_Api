import 'package:chat_application/constants/constaints.dart';
import 'package:flutter/material.dart';
import 'package:chat_application/Screen/chat-app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Application',
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          appBarTheme: AppBarTheme(color: cardColor)),
      debugShowCheckedModeBanner: false,
      home: const ChatApp(),
    );
  }
}
