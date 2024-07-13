import 'package:flutter/material.dart';
import 'package:online_store/Constants/global_variables.dart';
import 'Features/Screens/Auth Screen/Sign In/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Store',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor
        )
      ),
      home: const SignInScreen(),
    );
  }
}