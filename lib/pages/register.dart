//Register
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_commers_app/constant/colors.dart';
import 'package:e_commers_app/pages/signin.dart';
import 'package:e_commers_app/widgets/textField.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: appbarGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  textInputType: TextInputType.text,
                  obscureText: true,
                  hintText: "your name : ",
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: "Email : ",
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  hintText: "password : ",
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNgreen)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "if you have acount ",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: ((context) => Signin())) );
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(fontSize: 20, color: BTNgreen),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
