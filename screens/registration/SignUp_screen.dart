import 'package:charityorganization_app/screens/registration/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../widgets/registration_widget/button_signup_login.dart';
import '../../widgets/registration_widget/header_signup_login.dart';
import '../../widgets/registration_widget/textfieldform.dart';
import '../../widgets/registration_widget/to_signup_login.dart';

class sigeup extends StatefulWidget {
  const sigeup({Key? key}) : super(key: key);
  @override
  State<sigeup> createState() => _sigeupState();
}

class _sigeupState extends State<sigeup> {
  late bool hideText1 = true;
  late bool hideText2 = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  Future signUp() async {
    if (confirmPassword()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      Navigator.of(context).pushNamed('/');
    }
  }

  bool confirmPassword() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

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
              const HeaderSignUpLogin(
                title: 'SignUp',
                description: ' Join us with the pleasure of the charity:)',
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 20),
              TextFelidForm(
                myController: _confirmPasswordController,
                icon: hideText2
                    ? Icons.password_rounded
                    : Icons.remove_red_eye_outlined,
                text: 'confirm password',
                securText: hideText2,
                onpress: () {
                  setState(() {
                    hideText2 = !hideText2;
                  });
                },
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    color: Color.fromARGB(255, 120, 177, 224),
                    child: GestureDetector(
                      onTap: signUp,
                      child: Container(
                        width: 130,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text('SignUp',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 25),
              ToSignUpLogin(
                text: 'already have acount ',
                link: 'login',
                onpress: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => login()));
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
