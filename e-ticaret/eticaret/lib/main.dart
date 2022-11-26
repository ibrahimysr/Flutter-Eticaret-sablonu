import 'package:eticaret/Anaekran.dart';
import 'package:flutter/material.dart';

import 'colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yemek Krallığı',
        debugShowCheckedModeBanner: false,
        theme: _kShrineTheme,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnaEkran();
  }
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrineErrorRed,
      onPrimary: kShrinePink100,
      secondary: kShrinePink100,
      error: kShrineErrorRed,
    ),
  );
}
