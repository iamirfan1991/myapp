// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shreeveg/home_page.dart';
import 'package:shreeveg/my_cart.dart';
import 'package:shreeveg/payment_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sreeveg',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}
