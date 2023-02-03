import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailcontroller= TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();
  void login(String email, password)async{
    try{
      Response response= await post(Uri.parse("https://reqres.in/api/login"),
      body:{
        "email": email,
        "password": password,
      });
      if (response.statusCode==200){
        var data= jsonDecode(response.body.toString());
        print(data["token"]);
        print("Login Successfully");
      }
      else{
        print("failed");
      }

      }
    catch(e){
      print(e.toString());

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Api"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: "Email",
              ),

            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: "Password",
              ),

            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                login(emailcontroller.text.toString(), passwordcontroller.text.toString());
              },
              child: Container(
                child: Center(child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                ),)),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
