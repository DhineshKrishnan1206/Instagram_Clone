import 'package:chatapp/screens/BottomBar.dart';
import 'package:chatapp/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final openSans = GoogleFonts.openSans;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: LoginScreen()
        //BottomBar(),
        );
  }
}
