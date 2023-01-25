import 'package:flutter/material.dart';

class BtnAnimals extends StatelessWidget {
  const BtnAnimals(
      {Key? key, required this.name, required this.icon, required this.onClick ,this.color = Colors.indigo})
      : super(key: key);
  final String name;
  final String icon;
  final Color color;
  final void Function() onClick ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2 ),
        child: ElevatedButton.icon(
          onPressed: onClick ,
          label: Text(name),
          style: ElevatedButton.styleFrom(primary: color , alignment: Alignment.centerLeft , padding: EdgeInsets.only(left: 4)),
          icon: Image(
            image: AssetImage(icon),
            width: 22,
          ),
        ),
      ),
    );
  }
}
