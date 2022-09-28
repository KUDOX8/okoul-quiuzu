import 'package:flutter/material.dart';
import 'package:okoul_quizu/ui/pages/finish_quiz_page/finish_quiz_page.dart';
import 'package:okoul_quizu/ui/pages/home_page/home_page.dart';
import 'package:okoul_quizu/ui/pages/leaderboard_page/leaderboard_page.dart';
import 'package:okoul_quizu/ui/pages/question_page/question_page.dart';
import 'package:okoul_quizu/ui/pages/sign_in_page/otp_page.dart';
import 'package:okoul_quizu/ui/pages/sign_in_page/sign_in_page.dart';
import 'package:okoul_quizu/ui/pages/user_info_registration_page/user_info_registration_page.dart';
import 'package:okoul_quizu/ui/shared/pages/wrong_route_page/wrong_route_page.dart';
import 'package:okoul_quizu/utils/constants.dart';

import '../ui/pages/profile_page/profile_page.dart';

Route<dynamic> geneateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());

    case finishQuizPage:
      return MaterialPageRoute(builder: (context) => const FinishQuizPage());

    case leaderboardPage:
      return MaterialPageRoute(builder: (context) => const LeaderboardPage());

    case questionPage:
      return MaterialPageRoute(builder: (context) => const QuestionPage());

    case signInPage:
      return MaterialPageRoute(builder: (context) => const SignInPage());

    case otpPage:
      return MaterialPageRoute(builder: (context) => const OTPPage());

    case userInfoRegistrationPage:
      return MaterialPageRoute(
          builder: (context) => const UserInfoRegistrationPage());

    case profilePage:
      return MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      );

    default:
      return MaterialPageRoute(builder: (context) => const WrongRoutePage());
  }
}
