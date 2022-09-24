import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:okoul_quizu/ui/pages/sign_in_page/otp_page.dart';
import 'package:okoul_quizu/ui/pages/sign_in_page/sign_in_page.dart';
import 'package:okoul_quizu/ui/pages/user_info_registration_page/user_info_registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return const MaterialApp(
          home: UserInfoRegistrationPage(),
        );
      },
      designSize: const Size(500, 744),
    );
  }
}
