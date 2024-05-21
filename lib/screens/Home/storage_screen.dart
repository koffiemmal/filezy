import 'package:filezy/screens/Home/bottomnavigationbar.dart';
import 'package:filezy/screens/Home/card_storage.dart';
import 'package:filezy/screens/Home/choixcategories.dart';
import 'package:filezy/screens/Home/login_register.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 18, 169),
      body: Expanded(
          child: Column(children: [
        Container(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Files',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        Flexible(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              CardSTorage(),
              ChoixCatgo(),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Files',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(115, 148, 243, 116),
                            ),
                            child: Icon(
                              Icons.music_note,
                              color: Color.fromARGB(255, 9, 172, 44),
                              size: 35,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Melancholy memories.mp3',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text('  25Mb - 10Aug 2023')
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(bottom: 10),
                              alignment: Alignment.topRight,
                              child: Icon(Icons.more_vert))
                        ],
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(115, 243, 224, 116),
                            ),
                            child: Icon(
                             Icons.ondemand_video_sharp,
                              color:  Color.fromARGB(255, 172, 93, 9),
                              size: 35,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Beyond the horizon.mp4     ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text('  2.5GB - 25Sep 2022')
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(bottom: 10),
                              alignment: Alignment.topRight,
                              child: Icon(Icons.more_vert))
                        ],
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(115, 148, 243, 116),
                            ),
                            child: Icon(
                              Icons.music_note,
                              color: Color.fromARGB(255, 9, 172, 44),
                              size: 35,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Lost in the woods.map3      ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text('  40Mb - 17Jul 2022')
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(bottom: 10),
                              alignment: Alignment.topRight,
                              child: Icon(Icons.more_vert))
                        ],
                      ),
                    )
                    
                  ],
                ),
              )
            ],
          ),
        ))
      ])),
      bottomNavigationBar: BtnBar(),
    );
  }
}
