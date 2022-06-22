import 'package:flutter/material.dart';
import 'package:potfolio/Pages/home.dart';
import 'package:potfolio/Pages/loading_screen.dart';
import 'package:potfolio/Utilities/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio (Hassan Qayum)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor:AppColors.kPrimaryColor,
        scaffoldBackgroundColor: AppColors.kBgColor,
        canvasColor: AppColors.kBgColor,
      ),
      home: const LoadingScreen(),
    );
  }
}