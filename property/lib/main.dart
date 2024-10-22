import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/views/investments_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: GoogleFonts.playfair().fontFamily,
      useMaterial3: false,
      primarySwatch: Colors.blue
    ),
    home: InvestmentsScreen(),
  ),);
}