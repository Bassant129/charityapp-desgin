import 'package:charityorganization_app/screens/login/mlogin.dart';
import 'package:charityorganization_app/tabs/tasks/task_provider.dart';
import 'package:flutter/material.dart';
import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:page_transition/page_transition.dart";
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (_) => TaskProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 200,
        backgroundColor: Colors.white,
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.rotationTransition,
        splash: const CircleAvatar(
            radius: 100, backgroundImage: AssetImage("images/ch2.jpg")),
        nextScreen: const mlogin(),
      ),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.system,
    );
  }
}
