import 'package:charityorganization_app/auth.dart';
import 'package:charityorganization_app/screens/login/UserAdmin.dart';
import 'package:charityorganization_app/screens/login/users.dart';
import 'package:flutter/material.dart';
import '../registration/SignUp_screen.dart';
import '../registration/login_screen.dart';

class mlogin extends StatelessWidget {
  const mlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'charity organization ',
      debugShowCheckedModeBanner: false,
      //home: const Auth(),
      routes: {
        '/': (context) => const Auth(),
        "user": (context) => const Users(),
        //"admin": (context) => const UserAdmin(),
        "login": (context) => const login(),
        "sigeup": (context) => const sigeup(),
      },
    );
  }
}
