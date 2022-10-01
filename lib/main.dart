import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/home_page.dart';
import 'package:hello_flutter/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_flutter/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.white),
          primarySwatch: Colors.indigo,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        Routes.homeRoute: (context) => HomePage(),
        Routes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
