import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/app.dart';
import 'package:food_delivery_app/src/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}
