import 'package:animal_project/constant/path_images.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'btn_Animals/build_btn.dart';
import 'image_animals.dart';

// ignore: must_be_immutable
class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);
  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  String image = PathImages.animals;
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ImageAnimals(image: image),
            const Divider(color: Colors.black, thickness: 2, height: 0),
            BuildBtn(callback: (image , audio) {
              this.image = image;
              audioPlayer.resume();
              audioPlayer.setSourceAsset(audio);
              setState(() {});
              
            }),
          ],
        ),
      ),
    );
  }
}
