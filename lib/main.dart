import 'package:PostApp/injection_container.dart' as di;
import 'package:flutter/material.dart';

import 'feature/authentication/presentation/pages/authentication_page.dart';

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AuthenticationPage(),
    );
  }
}
