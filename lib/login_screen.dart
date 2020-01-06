import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    

    final welcomeText = Center(
      heightFactor: 5,
      child: Text('Welcome',
      style: TextStyle(fontSize: 30, color: Colors.white),),
    );

    final name = TextField(
      decoration: InputDecoration(
        hintText: 'Enter Name',
      ),
    );

    final password = TextField(
      decoration: InputDecoration(
        hintText: 'Enter Password',
      ),
    );

    final nameAndpassword = Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          name,
          password,
        ],
      ),
    );

    final forgotpassword = RaisedButton(
      onPressed: (){
      },
      child: Text('Forgot Password'),
    );

    final signup = RaisedButton(
      onPressed: (){

      },
      child: Text('Sign up'),
    );

    final forgotAndsignup = ButtonBar(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        forgotpassword,
        signup,
      ],
    );

    final login = RaisedButton(
      onPressed: (){

      },
      child: Text('Login'),
    );

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Login'),
      ),

      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset('assets/bayon.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),

          Column(
            children: <Widget>[
              welcomeText,
              nameAndpassword,
              forgotAndsignup,
              login,
            ],
          ),

          
        ],
      ),
    );
  }

}