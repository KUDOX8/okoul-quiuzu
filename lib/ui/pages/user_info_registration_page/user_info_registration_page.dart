import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:okoul_quizu/utils/constants.dart';

class UserInfoRegistrationPage extends StatelessWidget {
  const UserInfoRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              backgroundColor1,
              backgroundColor2,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'QuizU',
                      style: titleTextStyle,
                    )
                  ],
                ),
                50.verticalSpace,
                // create form for user info
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'abc',
                          label: const Text('Name'),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintStyle: normalTextStyle,
                          labelStyle: normalTextStyle,
                        ),
                        style: normalTextStyle,
                      ),
                    ],
                  ),
                ),
                30.verticalSpace,
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle,
                  child: Text('Verify', style: textInButtonStyle),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
