
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueDelete extends StatefulWidget {
  const ContinueDelete({super.key});

  @override
  State<ContinueDelete> createState() => _ContinueDeleteState();
}

class _ContinueDeleteState extends State<ContinueDelete> {
  List<Map<String, dynamic>> list= [
    {'text' : 'I already have an account'},
    {'text' : 'I recieve too many emails'},
    {'text' : 'I think this app is scam'},
    {'text' : 'I don’t have advantage for being a member'},
    {'text' : 'Other'},
  ];
  int value = 0;
  void _showCustomPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              // change the background color by this
                color: AppColors.background_Color,
                borderRadius: BorderRadius.circular(16)
            ),
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svgIcons/ok.svg'),
                SizedBox(height: 20..h,),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Your Account is deleted successfully!',
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                              fontSize: 15..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black
                          )
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30..h,),
            HText(text: 'Why do you want to delete your account?',
            fontSize: 20..sp,
            ),
            SText(text: 'Tell us what led you to want to delete your account',
            fontSize: 13..sp,
              fontWeight: FontWeight.w400,
              color: AppColors.black.withOpacity(.25),
            ),
            SizedBox(height: 15..h,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        value = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 20..h,
                            width: 20..w,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.border_Color
                                )
                            ),
                            child: Center(
                              child: Container(
                                height: 10..h,
                                width: 10..w,
                                decoration: BoxDecoration(
                                    color: value==index? AppColors.blue : AppColors.white,
                                    shape: BoxShape.circle,

                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20..w,),
                          HText(text: list[index]['text'],
                            fontSize: 12..sp,
                            fontWeight: FontWeight.w400,
                            color: value==index? AppColors.black : AppColors.black.withOpacity(.25),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10..h,),
            GestureDetector(
                onTap: (){
                  _showCustomPopup(context);
                },
                child: Button1(text: 'Continue Deleting...'))
          ],
        ),
      ),
    );
  }
}
