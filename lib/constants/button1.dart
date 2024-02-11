import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'custom_text.dart';

class Button1 extends StatelessWidget {
  final String text;
  const Button1({super.key,
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50..h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: HText(text: text,
          color: AppColors.white,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
