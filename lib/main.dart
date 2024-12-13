import 'package:flutter/material.dart';
import 'package:todo_app/constants/constants.dart';
import 'package:todo_app/screens/homepage.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))))),
        cardTheme: CardTheme(color: AppConstants().cardColor, elevation: 0),
        scaffoldBackgroundColor: AppConstants().backgroundColor,
        appBarTheme: AppBarTheme(
            color: AppConstants().appBarColor, scrolledUnderElevation: 0),
        fontFamily: "Comfortaa",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
