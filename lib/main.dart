import 'package:animal_project/view/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Animal());


class Animal extends StatelessWidget {
  const Animal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animal" ,
      home: HomePage(),
    );
  }
}