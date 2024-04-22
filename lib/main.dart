import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memory_box/Screen/HomeScreen.dart';
import 'package:memory_box/Screen/LogInPage.dart';
import 'package:memory_box/Screen/dosagetracker.dart';
import 'package:memory_box/StartingScreen.dart';
import 'package:memory_box/onboarding/mainonboarding.dart';
import 'Screen/ToDolist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}
