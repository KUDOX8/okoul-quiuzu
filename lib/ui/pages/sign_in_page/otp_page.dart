import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:okoul_quizu/utils/constants.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
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
                  children: [Text('QuizU', style: titleTextStyle)],
                ),
                50.verticalSpace,
                Text('Please enter the OTP sent to +9665xxxxxxxx',
                    style: normalTextStyle),
                30.verticalSpace,
                OTPTextField(
                  width: 350.w,
                  length: 4,
                  fieldWidth: 50.w,
                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                    backgroundColor: Colors.white,
                    borderColor: Colors.white,
                  ),
                  style: TextStyle(
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
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
