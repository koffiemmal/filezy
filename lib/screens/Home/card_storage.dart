import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CardSTorage extends StatelessWidget {
  const CardSTorage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(20),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 41, 18, 169), Colors.orange]),
          color: Color.fromARGB(255, 41, 18, 169),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.orange),
                  child: Icon(
                    Ionicons.albums_outline,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                        fixedSize: MaterialStatePropertyAll(Size(130, 35)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {},
                    child: Text(
                      'Clear Storage',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 12),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 5),
            child: LinearProgressIndicator(
              color: Colors.orange,
              value: 0.9,
              minHeight: 8,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '90Gb',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '100Gb',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 18),
            alignment: Alignment.centerLeft,
            child: Text(
              'You used 90% of your storage',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}