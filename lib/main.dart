import 'package:flutter/material.dart';
import 'package:new_project/pages/homePage.dart';
import 'package:new_project/pages/signUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.brown),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white), 
          
          // Add more text styles as needed
        ),
      ),
      title: 'Flutter Demo',
      home: SignUpPage(),
    );
  }
}
