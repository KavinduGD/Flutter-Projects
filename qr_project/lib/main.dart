import 'package:flutter/material.dart';
import 'package:qr_project/main_page.dart';
import 'package:qr_project/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: AppColors.primaryColor),
        ),
        debugShowCheckedModeBanner: false,
        home: const MainPage());
  }
}
