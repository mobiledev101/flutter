import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 200,
            child: TextField(
              controller: userController,
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: passController,
          ),
          SizedBox(height: 10,),
          RaisedButton(onPressed: (){

    }
          )
        ],
      ),
    );
}}
