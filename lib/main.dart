import 'package:flutter/material.dart';
import 'package:food_app/pages/signup_page.dart';
import 'package:food_app/pages/first_page.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/pages/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  MaterialColor myCustomColor = const MaterialColor(
  0xFF3366FF, // Replace with your custom color's hex value
  <int, Color>{
    50: Color(0xFFe7ac16), // Replace with the same hex value as above
    100: Color(0xFF3366FF),
    200: Color(0xFF3366FF),
    300: Color(0xFF3366FF),
    400: Color(0xFF3366FF),
    500: Color(0xFF3366FF), // Primary color
    600: Color(0xFF3366FF),
    700: Color(0xFF3366FF),
    800: Color(0xFF3366FF),
    900: Color(0xFF3366FF),
  },
);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       initialRoute:FirstPage.routeName,
       routes: {
         SplashScreen.routeName:(context) => const SplashScreen(),
         LoginPage.routeName:(context) => const LoginPage(),
         SignupPage.routeName:(context) =>  SignupPage(),
         FirstPage.routeName:(context) => FirstPage(),
       },
    );
  }
}

