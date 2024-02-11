import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/auth/forgetPassowrd1.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:fragrance_kw/constants/textField.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: ForgetPassword1(),
        );
      },
    );
  }
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 2..h,
                width: 100..w,
                decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(.25),
                  borderRadius: BorderRadius.circular(1)
                ),
              ),
            ),
            SizedBox(height: 25..h,),
            HText(text: 'Forget Password',),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: SText(text: 'Enter your email for the verification process, we will send 4 digits code to your email.'),
            ),
            SizedBox(height: 20..h,),
            TextField1(text: 'Email', path: 'assets/svgIcons/email.svg',tText: 'dummy@email.com',),
            SizedBox(height: 80..h,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    _showBottomSheet(context);
                  });
                },
                child: Button1(text: 'Sign In'))
          ],
        ),
      ),
    );
  }
}
