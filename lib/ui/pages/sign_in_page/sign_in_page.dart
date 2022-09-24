import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('icons/saudi_arabia_flag_icon.svg',
                        height: 25.h, width: 25.w),
                    5.horizontalSpace,
                    Text(
                      '(+966)',
                      style: normalTextStyle,
                    ),
                    10.horizontalSpace,
                    SizedBox(
                      height: 60.h,
                      width: 350.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '5xxxxxxxx',
                          label: const Text('Phone Number'),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintStyle: normalTextStyle,
                          labelStyle: normalTextStyle,
                        ),
                        style: normalTextStyle,
                      ),
                    ),
                  ],
                ),
                30.verticalSpace,
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle,
                  child: Text('Contuniue', style: textInButtonStyle),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
