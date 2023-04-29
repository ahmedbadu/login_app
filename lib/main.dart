import 'package:flutter/material.dart';
import 'package:login_app/sign_up.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: "User Login",
      home: sign_in(),
    );
  }

}

class sign_in extends StatelessWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Text(
                "Login",
                style: TextStyle(fontSize: 30,color: Colors.red),
              ),


              CircleAvatar(

                backgroundImage: AssetImage("images/login.png"),
                radius: 80.88,
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  onChanged: (value) {

                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Phone",
                    labelText: "Enter Phone:",
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      labelText: "Enter Password:",
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () => {},
                child: Text("Sign In"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              ),

              ElevatedButton(
                onPressed: () {
                  _navigateToSignUp(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: Text("Sign Up"),
              ),


            ],
          ),
        ),
      ),
    );

  }
  
  void _navigateToSignUp(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sign_up(),));
  }

}
