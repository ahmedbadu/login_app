import 'package:flutter/material.dart';
import 'package:login_app/main.dart';

class sign_up extends StatelessWidget{

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState!.validate()){
      print("Ok");
    }
    else{
      print("error");
    }
  }

  String name_validate(value){
    if(value.isEmpty){
      return "Required";
    }
    else if(value.length < 6){
      return "Name is too short";
    }
    else{
      return "Perfect!";
    }
  }

  String phone_validate(value){
    if(value.isEmpty){
      return "Required";
    }
    else if(value.length < 10){
      return "Invalid Phone Number";
    }
    else{
      return "Perfect!";
    }
  }

  String pass_validate(value){
    if(value.isEmpty){
      return "Required";
    }
    else if(value.length < 8){
      return "Password must be more than 8 character!";
    }
    else{
      return "Perfect!";
    }
  }

  String email_validate(value){
    if(value.isEmpty){
      return "Required";
    }
    else if(value.length < 10){
      return "Invalid Email Address";
    }
    else{
      return "Perfect!";
    }
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30,color: Colors.red),
                  ),

                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.verified_user),
                        hintText: "Name",
                      ),
                      validator: name_validate,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Phone",
                      ),
                      validator: phone_validate,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email",
                      ),
                      validator: email_validate,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password),
                        hintText: "Password",
                      ),
                      validator: pass_validate,
                    ),
                  ),

                  ElevatedButton(
                      onPressed: validate,
                      child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black12),
                  ),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text("Sign In"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}