import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:fragrance_kw/constants/textField.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword1 extends StatefulWidget {
  const ForgetPassword1({super.key});

  @override
  State<ForgetPassword1> createState() => _ForgetPassword1State();
}

class _ForgetPassword1State extends State<ForgetPassword1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.background_Color,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 2..h,
              width: 100..w,
              decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(.25),
                  borderRadius: BorderRadius.circular(1)
              ),
            ),
            SizedBox(height: 25..h,),
            SvgPicture.asset('assets/svgIcons/email1.svg'),
            SizedBox(height: 25..h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text('Reset Password link is successfully sent on your email or mobile number',
              style: GoogleFonts.dmSans(
                textStyle: TextStyle(
                  fontSize: 16..sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black
                ),
              ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text('Please check your email to reset your password',
              style: GoogleFonts.dmSans(
                textStyle: TextStyle(
                  fontSize: 15..sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.subColor
                ),
              ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40..h,),
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Button1(text: 'Continue Sign In'))
          ],
        ),
      ),
    );
  }
}
