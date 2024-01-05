import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/profiles_screen.dart';
import 'package:netflix_clone/screens/login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark()
      ),
      debugShowCheckedModeBanner: false,
      home: const AccountSelectionPage(),
    );
  }
}

