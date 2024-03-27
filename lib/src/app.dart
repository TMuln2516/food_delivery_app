import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/auth/login_or_register.dart';
import 'package:food_delivery_app/src/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
    );
  }
}
