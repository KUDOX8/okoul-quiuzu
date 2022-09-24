import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Colors.blue[300]!,
              Colors.blueAccent[700]!,
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
                    Text('QuizU',
                        style: TextStyle(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ],
                ),
                50.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('icons/saudi_arabia_flag_icon.svg',
                        height: 25.h, width: 25.w),
                    SizedBox(width: 5.w),
                    Text(
                      '(+966)',
                      style: TextStyle(fontSize: 18.sp),
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
                          hintStyle: TextStyle(fontSize: 18.sp),
                          labelStyle: TextStyle(fontSize: 18.sp),
                        ),
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
                30.verticalSpace,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amberAccent[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                          horizontal: 60.w, vertical: 20.h)),
                  child: Text('Contuniue',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
