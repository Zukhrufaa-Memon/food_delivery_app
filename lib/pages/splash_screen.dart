import 'package:flutter/material.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  static const String routeName ='splash';
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    super.initState();
    navigateToLoginPage();

  }


  void navigateToLoginPage() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    });
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,248,87,131),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/anims/food_doodle.png"),
             
              Image.asset("assets/anims/food_doodle.png"),
              
            ],
          ),
          Center(
            child: Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/anims/cravers.png")),
          )
        ],
      )
    );
  }
 
  
 

 
}
