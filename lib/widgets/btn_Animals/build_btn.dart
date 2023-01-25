import 'package:animal_project/constant/name_animals.dart';
import 'package:animal_project/constant/path_audio.dart';
import 'package:animal_project/constant/path_icons.dart';
import 'package:animal_project/constant/path_images.dart';
import 'package:flutter/material.dart';

import 'btn_animals.dart';

class BuildBtn extends StatelessWidget {
  const BuildBtn({Key? key, required this.callback}) : super(key: key);
  final void Function(String , String) callback;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18))),
        child: Column(
          children: [
            Row(children: [
              BtnAnimals(
                  name: NameAnimals.lion,
                  icon: PathIcons.lion,
                  onClick: () => callback(PathImages.lion , PathAudio.lion)),
              BtnAnimals(
                name: NameAnimals.cheetah,
                icon: PathIcons.cheetah,
                color: Colors.orange,
                onClick: () => callback(PathImages.cheetah ,PathAudio.cheetah)),
              BtnAnimals(
                name: NameAnimals.wolf,
                icon: PathIcons.wolf,
                onClick: () => callback(PathImages.wolf , PathAudio.wolf)),
            ]),
            Row(children: [
              BtnAnimals(
                  name: NameAnimals.cat,
                  icon: PathIcons.cat,
                  color: Colors.orange,
                  onClick: () => callback(PathImages.cat , PathAudio.cat)),
              BtnAnimals(
                name: NameAnimals.dog,
                icon: PathIcons.dog,
                onClick: () => callback(PathImages.dog ,PathAudio.dog)),
              BtnAnimals(
                name: NameAnimals.parrot,
                icon: PathIcons.parrot,
                color: Colors.orange,
                onClick: () => callback(PathImages.parrot , PathAudio.parrot)),
            ]),
            Row(children: [
              BtnAnimals(
                  name: NameAnimals.giraffe,
                  icon: PathIcons.giraffe,
                  onClick: () => callback(PathImages.giraffe , PathAudio.giraffe)),
              BtnAnimals(
                name: NameAnimals.crocodile,
                icon: PathIcons.crocodile,
                color: Colors.orange,
                onClick: () => callback(PathImages.crocodile ,PathAudio.crocodile)),
              BtnAnimals(
                name: NameAnimals.elephant,
                icon: PathIcons.elephant,
                onClick: () => callback(PathImages.elephant , PathAudio.elephant)),
            ]),
          ],
        ),
      ),
    );
  }
}
