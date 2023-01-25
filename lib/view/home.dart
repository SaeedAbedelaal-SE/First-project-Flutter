import 'package:animal_project/widgets/appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbar(),
      body: BodyPage(),
    );
  }
}
