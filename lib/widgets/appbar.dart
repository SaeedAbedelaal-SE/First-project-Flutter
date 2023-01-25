import 'package:animal_project/constant/name_animals.dart';
import 'package:animal_project/constant/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      centerTitle: true,
      title: Text(
        NameAnimals.animals,
        style: GoogleFonts.pacifico(fontSize: 35),
      ),
      leading: const Icon(
        Icons.menu,
        size: 35,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(PathIcons.pawprint),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
