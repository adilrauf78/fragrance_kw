import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/auth/enableLocation.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/textField.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/custom_text.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,
                    color: AppColors.black,
                    size: 18,
                  ),
                ),
                SizedBox(height: 20..h,),
                HText(text: 'Lets Get Started'),
                SText(text: 'Enter the following details to create account'),
                SizedBox(height: 20..h,),
                TextField1(text: 'First Name', path: 'assets/svgIcons/person.svg'),
                SizedBox(height: 20..h,),
                TextField1(text: 'Last Name', path: 'assets/svgIcons/person.svg'),
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
                SizedBox(height: 20..h,),
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
                SizedBox(height: 170..h,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EnableLocation(),));
                    },
                    child: Button1(text: 'Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
