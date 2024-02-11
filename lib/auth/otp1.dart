import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/auth/enableLocation.dart';
import 'package:fragrance_kw/auth/userDetails.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/custom_text.dart';

class OTPScreen1 extends StatefulWidget {
  const OTPScreen1({super.key});

  @override
  State<OTPScreen1> createState() => _OTPScreen1State();
}

class _OTPScreen1State extends State<OTPScreen1> {
  late List<TextEditingController> controllers;
  late List<String> otpValues;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(4, (index) => TextEditingController());
    otpValues = List.filled(4, '');
    focusNodes = List.generate(4, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Padding(
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
              SizedBox(height: 85..h,),
              HText(text: 'Verify Account'),
              SText(text: 'Please type the verification code send to dummy@email.com'),
              SizedBox(height: 20..h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                        (index) => Container(
                          padding: EdgeInsets.all(3.5),
                      width: 60..w,
                      height: 60..h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFE5E5E5)
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextField(
                          cursorColor: AppColors.white,
                          controller: controllers[index],
                          focusNode: focusNodes[index],
                          onChanged: (value) {
                            setState(() {
                              otpValues[index] = value;
                            });

                            if (value.length == 1 && index < controllers.length - 1) {
                              // Move focus to the next TextField
                              FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                            }
                          },
                          maxLength: 1,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.white
                          ),
                          decoration: InputDecoration(
                            // hintText: '0',
                            // hintStyle: TextStyle(
                            //     color: AppColors.subColor
                            // ),
                            counterText: '', // To hide the default maxLength counter
                            border: InputBorder.none,
                            filled: true,
                            fillColor: otpValues[index].isNotEmpty ? AppColors.blue : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30..h,),
              Center(
                child: HText(text: 'Resend Code in : 00:42s',
                fontWeight: FontWeight.w700,
                  fontSize: 14..sp,
                  color: Color(0xFF454F5B),
                ),
              ),
              SizedBox(height: 50..h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EnableLocation(),));
                  },
                  child: Button1(text: 'Verify Account'))
            ],
          ),
        ),
      ),
    );
  }
}
