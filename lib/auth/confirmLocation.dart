import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/navigationBar.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';

class ConfirmLocation extends StatefulWidget {
  const ConfirmLocation({super.key});

  @override
  State<ConfirmLocation> createState() => _ConfirmLocationState();
}

class _ConfirmLocationState extends State<ConfirmLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/img.png'),
                fit: BoxFit.fill
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                              color: AppColors.black,
                              size: 18,
                            ),
                          ),
                          HText(text: 'Cancel',
                          fontSize: 16..sp,
                            fontWeight: FontWeight.w500,
                              color: Color(0xFFD40000),
                          )
                        ],
                      ),
                      SizedBox(height: 20..h,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.border_Color
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svgIcons/location.svg'),
                            SizedBox(width: 5..w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HText(text: 'H#28 saleem Street # 17 Fiji garhi stop,',
                                fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  color: AppColors.subColor,
                                ),
                                HText(text: 'Kuwait',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.subColor,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                      },
                      child: Button1(text: 'Confirm Location'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
