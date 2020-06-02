import 'dart:ui';
import 'package:flutter/material.dart';

const kAppBarTitle = TextStyle(
  fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.bold,
); //for the appBar

const kClassTitle = TextStyle(
  color: Colors.black,
  fontSize: 25,
  fontWeight: FontWeight.bold,
); //for the class name

const kSmallText = TextStyle(
  color: Colors.black,
  fontSize: 10,
  fontWeight: FontWeight.bold,
); //for the small text - grade, credits

const kGradeText = TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.bold,
); //text for the grade (A+, B, C, ect...)

const kDisplayFeatures = TextStyle( // top of the display (your GPA)
  letterSpacing: 1.3,
  fontSize: 22,
  color: Colors.black,
  fontWeight: FontWeight.w500,
); //text above the display feature

const kDisplayFeaturesUnderNeath = TextStyle( //bottm of the display (3.56)
  fontSize: 45,
  color: Color(0xFF389F46),
  fontWeight: FontWeight.bold,
);//text above the display feature