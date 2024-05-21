import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BtnBar extends StatelessWidget {
  const BtnBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
        border: Border(top: BorderSide(color: const Color.fromARGB(189, 158, 158, 158)))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.home_sharp,
                color: Color.fromARGB(255, 41, 18, 169),
              )),
          IconButton(onPressed: () {}, icon: Icon(Ionicons.albums_outline)),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color.fromARGB(255, 41, 18, 169),
            ),
           
              child: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              )),
               IconButton(onPressed: () {}, icon: Icon(Ionicons.settings_sharp,color: Colors.grey,)),
                  IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.person,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
