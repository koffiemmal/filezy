

import 'package:filezy/screens/Home/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      Duration(milliseconds: 5000),
    Redirection
    );
  }

  Future<void> Redirection() async {
    Navigator.push(
        context as BuildContext, MaterialPageRoute(builder: (context) => LoginScreen())); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 18, 169),
      body: Expanded(
          child: Center(
        child: Container(
          padding: EdgeInsets.only(left: 125),
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
              
                children: [
                  Icon(
                    Ionicons.albums_outline,
                    color: Colors.white,
                    weight: 35,
                    size: 40,
                  ),
                 SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Filezy',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Container(

                padding: EdgeInsets.only(top: 10,right: 115),
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
