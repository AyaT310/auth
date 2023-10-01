import 'package:auht/register_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFFFAA00),
          child: Column(
            children: [
              SizedBox(height: 55,),
              ListTile(
                title: Text("Welcome",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, color: Colors.white),),
                subtitle: Text("Back",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              SizedBox(height: 25,),
              Container(
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                ),
                padding: EdgeInsets.all(20),
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      TextFormField(
                       controller: EmailController,
                       validator: (value) {
                         if(value!.isEmpty){
                           return "Email can't be empty";
                         }else if(!RegExp (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                           return "Incorrect Email";
                         }
                       },
                        onChanged: (value) {
                          key.currentState!.validate();
                        },
                        decoration: InputDecoration(
                          label: Text("Email",style: TextStyle(color: Color(0xFFFFAA00),fontSize: 18),),
                          hintText: "Enter Your Email",
                          prefixIcon: Icon(Icons.email,color: Color(0xFFFFAA00),size: 30,),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFFFFAA00) )),
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        controller: PasswordController,
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Password can't be empty";
                          }else if(value.length < 8){
                            return "Password can't be less than 8 characters";
                          }
                        },
                        onChanged: (value) {
                          key.currentState!.validate();
                        },
                        decoration: InputDecoration(
                          label: Text("Password",style: TextStyle(color: Color(0xFFFFAA00),fontSize: 18),),
                          hintText: "Enter Your Password",
                          prefixIcon: Icon(Icons.password_rounded,color: Color(0xFFFFAA00),size: 30,),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFFFFAA00) )),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sign In",style: TextStyle(color: Color(0xFFFFAA00),fontSize: 30,fontWeight: FontWeight.bold),),
                          FloatingActionButton(
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
                            },
                            child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                            backgroundColor: Color(0xFFFFAA00),
                          )
                        ],
                      ),
                      SizedBox(height: 60,),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Don't have an account?",style: TextStyle(fontSize: 16),),
                          TextButton(onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Register()));
                          }, child: Text("Register",style: TextStyle(fontSize: 22),),style: TextButton.styleFrom(primary: Color(0xFFFFAA00),),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
