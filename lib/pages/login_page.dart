

import 'package:flutter/material.dart';
import 'package:food_app/pages/first_page.dart';
import 'package:food_app/pages/signup_page.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName ='loginpage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 127, 0, 255),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 2.0
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           const  Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text("Welcome to Food delivery App",
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white
                
              ),),
            ),
           const Text("Login to Order! ",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.white
                
              ),),
           Container(
             height:430,
              width : 370,
              decoration:
               const BoxDecoration(color:  Colors.white,
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40)
               )),
               child: Padding(
                 padding: const EdgeInsets.only(
                  top: 68.0,
                  left: 24.0,
                  right: 24.0
                 ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                       decoration: InputDecoration(
                         icon:Icon(Icons.mail_lock),
                         border: OutlineInputBorder(),
                         hintText:'Enter Username' ,
                         fillColor: Color.fromARGB(255, 216, 191, 240),
                         filled: true),
                     ),
                             const SizedBox(height: 20, ),
                             const TextField(
                       obscureText: true,
                       decoration: InputDecoration(
                         icon: Icon(Icons.key),
                         border: OutlineInputBorder(),
                         hintText: 'Enter Password',
                         fillColor: Color.fromARGB(255, 216, 191, 240),
                         filled: true),
                     ),
                           TextButton(
                           onPressed: () {},
                           child: const Text('Forgot Password?'),),
                          const SizedBox(height: 6),

                          ElevatedButton(onPressed:(){
                           Navigator.of(context).pushNamed(FirstPage.routeName);
                          },
                   style: ElevatedButton.styleFrom(
                       fixedSize: const Size(220.0, 50.0),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(24),
                       ),
                       backgroundColor: Color.fromARGB(255, 127, 0, 255)
                     ), 
                   child:
                    const Text('Sign in')),
                           
                           TextButton(
                             onPressed: () {
                            Navigator.of(context).pushNamed(SignupPage.routeName);
                             },
                           style : TextButton.styleFrom(primary: Colors.grey),
                            child:
                 const Text('Not registered yet? Create an Account')),
                             const Spacer(flex: 2,)
                           
                         ],
                       
                        ),
               )) ],
               ),));
           
         }}