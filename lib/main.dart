import 'package:PostApp/feature/authentication/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:PostApp/injection_container.dart' as di;
import 'feature/authentication/presentation/pages/authentication_page.dart';



void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthenticationPage(),
    );
  }
}


