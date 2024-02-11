import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/auth/otp.dart';
import 'package:fragrance_kw/auth/signIn.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:fragrance_kw/constants/textField.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                            HText(text: 'Create Account'),
                            SText(text: 'Enter your email for verification'),
                            SizedBox(height: 20..h,),
                            TextField1(text: 'Email', path: 'assets/svgIcons/email.svg', tText: 'dummy@email.com'),
                            SizedBox(height: 50..h,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
                                },
                                child: Button1(text: 'Verify')),
                            SizedBox(height: 235..h,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SText(text: 'Already have an account?',
                                  fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SText(text: 'Sign In',
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
                            HText(text: 'Create Account'),
                            SText(text: 'Enter your email for verification'),
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
                            SizedBox(height: 50..h,),
                            Button1(text: 'Verify'),
                            SizedBox(height: 235..h,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SText(text: 'Already have an account?',
                                  fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SText(text: 'Sign In',
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
