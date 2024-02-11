import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/custom_text.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool obscureText = true;
  bool obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                    HText(text: 'Change Password',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 20..h,),
                SText(text: 'Enter your new password here',
                color: AppColors.black,
                  fontSize: 16..sp,
                ),
                SizedBox(height: 20..h,),
                SText(text: 'Password',
                  fontSize: 15,
                  color: AppColors.black.withOpacity(.6),
                ),
                SizedBox(height: 10..h,),
                Container(
                  height: 45..h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.border_Color
                      )
                  ),
                  child: TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Transform.scale(
                          scale: 0.5,
                          child: SvgPicture.asset('assets/svgIcons/lock.svg')),
                      hintText: '***********',
                      hintStyle: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                              fontSize: 15..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.subColor
                          )
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          // Toggle the password visibility
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF9FA3A8),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15..h,),
                SText(text: 'Confirm Password',
                  fontSize: 15,
                  color: AppColors.black.withOpacity(.6),
                ),
                SizedBox(height: 10..h,),
                Container(
                  height: 45..h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.border_Color
                      )
                  ),
                  child: TextField(
                    obscureText: obscureText1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Transform.scale(
                          scale: 0.5,
                          child: SvgPicture.asset('assets/svgIcons/lock.svg')),
                      hintText: '***********',
                      hintStyle: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                              fontSize: 15..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.subColor
                          )
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          // Toggle the password visibility
                          setState(() {
                            obscureText1 = !obscureText1;
                          });
                        },
                        child: Icon(
                          obscureText1 ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF9FA3A8),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30..h,),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button1(text: 'Save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
