import 'package:flutter/material.dart';

class ImageAnimals extends StatelessWidget {
  const ImageAnimals({Key? key , required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.fill)),
      ),
    );
  }
}
