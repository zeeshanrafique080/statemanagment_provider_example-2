import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_provider_example/provider/homepageprovider.dart';
import 'package:second_provider_example/screen/homepage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => contactModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home_page(),
    );
  }
}
