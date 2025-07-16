
import 'package:flutter/material.dart';

class AppColors {
//Normale Farben
static const Color test =  Colors.black;
//static const Color background = 

static const Color topBarColor = Color(0xFF173C41);
static const Color botBarColor = Color(0xFF173C41);

//Gradiant Farben
static const Color navbuttstart = Color(0xFF3B99A7);
static const Color navbuttend = Color(0xFF173C41);

 static final LinearGradient navButtonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      navbuttstart,
      navbuttend,
    ],
  );
}