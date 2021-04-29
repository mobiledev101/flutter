
import 'package:PostApp/feature/authentication/domain/entities/authentication.dart';
import 'package:flutter/material.dart';

class AuthenticationDisplay extends StatelessWidget {
  final Authentication authentication;

  const AuthenticationDisplay({
    Key key,
    @required this.authentication,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: <Widget>[
          Text(
            authentication.user.toString(),
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  authentication.password,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
