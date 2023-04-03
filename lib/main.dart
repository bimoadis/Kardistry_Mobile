import 'package:flutter/material.dart';
import 'package:kardistry/homepage.dart';
import 'package:kardistry/page/rootpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Onboarding Screen',
      home: RootPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}