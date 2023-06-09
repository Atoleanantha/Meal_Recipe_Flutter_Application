import 'package:explorer/screens/tabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme=ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(brightness: Brightness.dark,seedColor: const Color.fromARGB(255, 131, 58, 0)),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:theme,
      home: const TabsScreen(),
    );
  }
}
