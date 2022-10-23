import 'package:athena/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: const ColorScheme.light().copyWith(primary: Colors.cyan),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.cyan,
        ),
        primarySwatch: Colors.cyan, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFCBF1F5)),

      ),
      home: const HomeScreen(),
    );
  }
}