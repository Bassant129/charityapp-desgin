import 'dart:convert';
import 'package:charityorganization_app/screens/login/UserAdmin.dart';
import 'package:charityorganization_app/screens/login/users.dart';
import 'package:charityorganization_app/screens/registration/SignUp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../widgets/registration_widget/button_signup_login.dart';
import '../../widgets/registration_widget/header_signup_login.dart';
import '../../widgets/registration_widget/textfieldform.dart';
import '../../widgets/registration_widget/to_signup_login.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  late bool hideText1 = true;
  late bool hideText2 = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future singIN() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "images/login(1).png",
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "  Welcome back! nice to see you again:)",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 20),
              TextFelidForm(
                myController: _emailController,
                icon: Icons.email,
                text: 'email',
                securText: false,
              ),
              const SizedBox(height: 20),
              TextFelidForm(
                myController: _passwordController,
                icon: hideText1
                    ? Icons.password_rounded
                    : Icons.remove_red_eye_rounded,
                text: 'password',
                securText: hideText1,
                onpress: () {
                  setState(() {
                    hideText1 = !hideText1;
                  });
                },
              ),
              SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    color: Color.fromARGB(255, 120, 177, 224),
                    child: GestureDetector(
                      onTap: singIN,
                      child: Container(
                        width: 130,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text('login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 25),
              Row(
                children: [
                  Text("       If you donot have acount  ",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => sigeup()));
                    },
                    child: Text("Signup!",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 124, 233),
                        )),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
