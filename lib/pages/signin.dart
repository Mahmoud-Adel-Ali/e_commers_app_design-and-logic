// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

//to start any Application ,you should write the code
import 'package:e_commers_app/constant/colors.dart';
import 'package:e_commers_app/pages/register.dart';
import 'package:e_commers_app/widgets/textField.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Signin(),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      appBar: AppBar(
        title: Text("Sign in"),
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
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: "enter your email : ",
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  hintText: "enter your password : ",
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "sign in",
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
                      "if you don't have acount ",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: ((context) => Register())) );
                        },
                        child: Text(
                          "register",
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
