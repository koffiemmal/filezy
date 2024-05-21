import 'package:flutter/material.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: const Color.fromARGB(255, 200, 200, 200)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    fixedSize: MaterialStatePropertyAll(Size(165, 50)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 41, 18, 169))),
                onPressed: () {},
                child: Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    fixedSize: MaterialStatePropertyAll(Size(165, 50)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 255, 255, 255))),
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(color: Color.fromARGB(255, 41, 18, 169)),
                ))
          ],
        ));
  }
}