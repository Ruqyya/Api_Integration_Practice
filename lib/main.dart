import 'package:flutter/material.dart';
import 'package:user_api/getApi/example_one.dart';
import 'package:user_api/getApi/example_two.dart';
import 'package:user_api/signup.dart';
import 'package:user_api/upload_image.dart';

import 'getApi/example_four.dart';
import 'getApi/example_three.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const ExampleFour(),
    );
  }
}
