

import 'package:flutter/material.dart';
import 'package:food_app/models/formdata.dart';



class SignupPage extends StatefulWidget {
   SignupPage({Key? key}) : super(key: key);
  static const String routeName ='signuppage';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
   TextEditingController pcontroller=TextEditingController();

  TextEditingController cpcontroller=TextEditingController();

  TextEditingController ucontroller=TextEditingController();

  TextEditingController dobcontroller=TextEditingController();

  TextEditingController emailcontroller=TextEditingController();

  String? gender=null;

  bool showError = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey =GlobalKey<FormState>();
    
    String _name;
    String _email;
    String _dob;
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
           const Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text("Register here! ",
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.white
                
              ),),
            ),
           Container(
             height:500,
              width : 370,
              decoration:
               const BoxDecoration(color:  Colors.white,
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40)
               )),
               child: Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formkey,
                    child: 
                    Padding(
                      padding:  
                      EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: ucontroller,
                            decoration: const InputDecoration(
                              labelText: "Username",
                              border: UnderlineInputBorder()),
                              onChanged: (value) => _name=value,
                              validator: (value) {
                                if(value!.isEmpty) {
                                  return "please enter some text";}
                                  return null; },
                          ),

                          TextFormField(
                            controller: emailcontroller,
                            decoration: const InputDecoration(
                              labelText: "Email",
                              border: UnderlineInputBorder()),
                              onChanged: (value) => _email=value,
                              validator: (value) {
                                final RegExp emailRegex =
                                RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
                                if(value!.isEmpty) {
                                  return "please enter some text";}
                                 if (!emailRegex.hasMatch(value)) {
                                 return 'Email must be in format i-e abc@gmail.com';
                         }
                                  return null; },
                          ),
                            
                          TextFormField(
                            controller: pcontroller,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              border: UnderlineInputBorder()),
                              
                            validator: (value) {
                           if(value!.length <8) {
                              return "Password should be greater than 8 ";
                            }
                            RegExp passwordRegex = RegExp(
                             r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                            
                         if (!passwordRegex.hasMatch(value)) {
                           return '-Password must include uppercase,\n- lowercase, digit, and special character';
                         }
                            return null;
                          }, ),
                          TextFormField(
                            controller: cpcontroller,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Confirm Password",
                              border: UnderlineInputBorder()
                            ),
                            validator: (value) {
                           if(value != pcontroller.text) {
                            return "Oops!Password doesn't match.";
                           }
                            return null;
                          }, ),
                            Row(
                            children: [
                            const Text("Gender",
                               style: TextStyle(
                                fontSize: 16
                               ),),
                              Radio(
                                value: "Male",
                                groupValue: gender,
                               onChanged: (value){
                                 setState(() {
                                   gender=value!;
                                   showError=false;
                                 });
                               }),
                              const Text("Male"),
                               Radio(
                                value: "Female",
                                groupValue: gender,
                                
                               onChanged: (value){
                                 setState(() {
                                   gender=value!;
                                   showError=false;
                                 });
                               }),
                              const Text("Female"),
                            ],
                          ),

                          TextFormField(
                            controller: dobcontroller,
                            decoration: const InputDecoration(
                              labelText: "Date of Birth"
                            ),
                            
                          ),
                          const SizedBox(height: 10,),
                          ElevatedButton(
                             child: const Text("Register"),
                             style: ElevatedButton.styleFrom(
                              backgroundColor:Color.fromARGB(255, 127, 0, 255)
                             ),
                             onPressed: (){
                               if (gender==null)
                               showError=true;
                               if(formkey.currentState!.validate()&& showError==false) { //it will check values of all fields wrt validator
                                // ScaffoldMessenger.of(context).showSnackBar(
                                // SnackBar(content: Text("Form Successfully submitted! ${ucontroller.text} and ${pcontroller.text}")));
                                // Future.delayed(const Duration(seconds: 3));
                                FormDataModel formData=FormDataModel(
                                  name: ucontroller.text,
                                  email: emailcontroller.text,
                                  Gender: gender,
                                  dob: dobcontroller.text
                                );
                                // Navigator.pushNamed(
                                //   context,
                                //   '/datapage',
                                //   arguments: formData);
                  }    
                  else {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("plz select gender")));}

                             },)
                        ],
                      ),
                    )
                  ),
                ),
              )) ],
               ),));
           
         }}