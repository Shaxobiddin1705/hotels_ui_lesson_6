import 'package:flutter/material.dart';
import 'package:hotels_ui_lesson_6/pages/home_page.dart';
import 'package:hotels_ui_lesson_6/pages/online_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnlineTask(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        OnlineTask.id: (context) => const OnlineTask(),
      },
    );
  }
}