import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/NavigationBar/navigationBar.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background_Color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/success.png',
            height: 266..h,
              width: 296..w,
            ),
          ),
          SizedBox(height: 25..h,),
          HText(text: 'Success!',
          fontSize: 34..sp,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: HText(text: 'Your order will be delivered soon.Thank you for choosing our app!',
            fontSize: 14..sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 60..h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                },
                child: Button1(text: 'Back to Home')),
          )
        ],
      ),
    );
  }
}
