import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'custom_text.dart';

class TextField1 extends StatelessWidget {
  final String text;
  final String path;
  final String? tText;
  const TextField1({super.key,
  required this.text,
    required this.path,
    this.tText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SText(text: text,
          fontSize: 15,
          color: AppColors.black.withOpacity(.6),
        ),
        SizedBox(height: 10..h,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2),
          height: 45..h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: AppColors.border_Color
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Transform.scale(
                    scale: 0.5,
                    child: SvgPicture.asset(path)),
                hintText: tText?? null,
                hintStyle: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                        fontSize: 15..sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subColor
                    )
                )
            ),
          ),
        ),
      ],
    );
  }
}
