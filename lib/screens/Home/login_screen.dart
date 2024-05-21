import 'package:filezy/screens/Home/login_register.dart';
import 'package:filezy/screens/Home/storage_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Future<void> _method() async {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StorageScreen(),
          ));
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 18, 169),
      body: Expanded(
          child: Column(children: [
        Container(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 110),
            child: Row(
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
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
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
              LoginRegister(),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Username or Email',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(176, 219, 219, 219),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.grey)),
                      validator: (value) {
                        return value == ""
                            ? "L'email ne peut pas etre vide"
                            : null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    margin: EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      'Username or Email',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(176, 219, 219, 219),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Password',
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(color: Colors.grey)),
                      validator: (value) {
                        return value == ""
                            ? "L'email ne peut pas etre vide"
                            : null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            fixedSize: MaterialStatePropertyAll(Size(400, 50)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 41, 18, 169))),
                        onPressed: () {
                          Future.delayed(Duration(milliseconds: 2000), _method);

                        
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        )),
                  )
                ],
              )),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 60),
                  child: Divider(
                    color: const Color.fromARGB(160, 158, 158, 158),
                    indent: 10,
                  )),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 30),
                child: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8))),
                        fixedSize: MaterialStatePropertyAll(Size(400, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 20,
                        ),
                        Text(
                          '   Login with Google',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black),
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8))),
                        fixedSize: MaterialStatePropertyAll(Size(400, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 20,
                        ),
                        Text(
                          '   Login with Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black),
                        )
                      ],
                    )),
              )
            ],
          ),
        ))
      ])),
    );
  }
}
