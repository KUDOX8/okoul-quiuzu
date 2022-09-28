import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Colors Section Start //
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color white = Colors.white;
Color backgroundColor1 = Colors.blue[300]!;
Color backgroundColor2 = Colors.blueAccent[700]!;

// Colors Section End //

// Text Styles Section Start //

TextStyle titleTextStyle = TextStyle(
    fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.white);
TextStyle normalTextStyle = TextStyle(fontSize: 18.sp);
TextStyle textInButtonStyle = TextStyle(
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
);

// Text Styles Section End //

// Button Styles Section Start //

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.amberAccent[400],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 0,
    padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h));

// Button Styles Section End //

// Routes Section Start //

const String homePage = '/';
const String finishQuizPage = '/finishQuizPage';
const String leaderboardPage = '/leaderboardPage';
const String profilePage = '/profilePage';
const String questionPage = '/questionPage';
const String userInfoRegistrationPage = '/userInfoRegistrationPage';
const String signInPage = '/signInPage';
const String otpPage = '/otpPage';
const String settingsPage = '/settingsPage';


// Routes Section End //
