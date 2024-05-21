import 'package:filezy/screens/Home/storage_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ChoixCatgo extends StatelessWidget {
  const ChoixCatgo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ChoixCategories(
            
              Icon(
                Icons.file_present,
                color: Color.fromARGB(255, 0, 8, 120),
                size: 35,
              ),
              Color.fromARGB(115, 116, 186, 243),
              'Docs',60,65),
          ChoixCategories(
              Icon(
                Ionicons.file_tray,
                color: Color.fromARGB(255, 215, 34, 27),
                size: 35,
              ),
              Color.fromARGB(115, 243, 141, 116),
              'Photos',60,65),
          ChoixCategories(
              Icon(
                Icons.music_note,
                color: Color.fromARGB(255, 9, 172, 44),
                size: 35,
              ),
              Color.fromARGB(115, 148, 243, 116),
              'Music',60,65),
          ChoixCategories(
              Icon(
                Icons.ondemand_video_sharp,
                color: Color.fromARGB(255, 172, 93, 9),
                size: 35,
              ),
              Color.fromARGB(115, 243, 224, 116),
              'Videos',60,65)
        ],
      ),
    );
  }
}

class ChoixCategories extends StatelessWidget {
  double heightl;
  double widthl;
  Icon icones;
  Color couleur;
  String? text;

  ChoixCategories(this.icones, this.couleur, this.text,this.heightl,this.widthl);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: heightl,
          width: widthl,
          /* height: 60,
          width: 65, */
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: couleur),
          child: icones,
        ),
        Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              '${text}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ))
      ],
    );
  }
}
