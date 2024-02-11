import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/auth/createAccount.dart';
import 'package:fragrance_kw/auth/forgetPassword_bottomSheet.dart';
import 'package:fragrance_kw/auth/otp1.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:fragrance_kw/constants/textField.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: ForgetPassword(),
        );
      },
    );
  }

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
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
                  SizedBox(height: 30..h,),
                  Center(
                    child: Text('Logo',
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 30..h,),
                  TabBar(
                    physics: NeverScrollableScrollPhysics(),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: AppColors.blue,
                    indicatorColor: AppColors.blue,
                    unselectedLabelColor: AppColors.black,
                    labelStyle:GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blue
                        )
                    ) ,
                    unselectedLabelStyle: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black
                      )
                    ),
                    tabs: [
                      Tab(
                        text: 'Email',
                      ),
                      Tab(
                        text: 'Phone',
                      )
                    ],
                  ),
                  SizedBox(height: 20..h,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.67,
                    child: TabBarView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HText(text: 'Sign In'),
                            SText(text: 'Enter your email and password to sign in'),
                            SizedBox(height: 20..h,),
                            TextField1(text: 'Email', path: 'assets/svgIcons/email.svg', tText: 'dummy@email.com'),
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
                            SizedBox(height: 5..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _showBottomSheet(context);
                                    });
                                  },
                                  child: HText(text: 'Forgot password?',
                                  fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30..h,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen1(),));
                                },
                                child: Button1(text: 'Sign In')),
                            SizedBox(height: 30..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 1..h,
                                  width: MediaQuery.of(context).size.width*.4,
                                  color: AppColors.black.withOpacity(.25),
                                ),
                                HText(text: 'or',
                                  fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                ),
                                Container(
                                  height: 1..h,
                                  width: MediaQuery.of(context).size.width*.4,
                                  color: AppColors.black.withOpacity(.25),
                                ),
                              ],
                            ),
                            SizedBox(height: 25..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svgIcons/google.svg'),
                                SizedBox(width: 20..w,),
                                SvgPicture.asset('assets/svgIcons/fb.svg'),
                                SizedBox(width: 20..w,),
                                SvgPicture.asset('assets/svgIcons/linked.svg'),
                              ],
                            ),
                            SizedBox(height: 25..h,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SText(text: 'Don’t have any account?',
                                  fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SText(text: 'Sign Up',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HText(text: 'Sign In'),
                            SText(text: 'Enter your Phone number and password to sign in'),
                            SizedBox(height: 20..h,),
                            SText(text: 'Phone',
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
                              child: Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*.35,
                                    child: CountryCodePicker(
                                      showDropDownButton: true,
                                      // flagWidth: 90,
                                      padding: const EdgeInsets.all(0),
                                      // countryList: countryList,
                                      textStyle: const TextStyle(color: Colors.black),
                                      onChanged: (value) {
                                        setState(() {
                                          // signUpController.countryCodeUpdate = value;
                                        });
                                      },
                                      initialSelection: "KW",
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    width: MediaQuery.of(context).size.width*.52,
                                    child: TextField(
                                      cursorColor: Color(0xFF9FA3A8),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                            SizedBox(height: 5..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _showBottomSheet(context);
                                    });
                                  },
                                  child: HText(text: 'Forgot password?',
                                  fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30..h,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen1(),));
                                },
                                child: Button1(text: 'Sign In')),
                            SizedBox(height: 30..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 1..h,
                                  width: MediaQuery.of(context).size.width*.4,
                                  color: AppColors.black.withOpacity(.25),
                                ),
                                HText(text: 'or',
                                  fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                ),
                                Container(
                                  height: 1..h,
                                  width: MediaQuery.of(context).size.width*.4,
                                  color: AppColors.black.withOpacity(.25),
                                ),
                              ],
                            ),
                            SizedBox(height: 25..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svgIcons/google.svg'),
                                SizedBox(width: 20..w,),
                                SvgPicture.asset('assets/svgIcons/fb.svg'),
                                SizedBox(width: 20..w,),
                                SvgPicture.asset('assets/svgIcons/linked.svg'),
                              ],
                            ),
                            SizedBox(height: 25..h,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SText(text: 'Don’t have any account?',
                                  fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SText(text: 'Sign Up',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
