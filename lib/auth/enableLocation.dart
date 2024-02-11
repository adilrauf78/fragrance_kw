import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/auth/confirmLocation.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/locationMarker.png',
                  height: 170..h,
                    width: 140..w,
                  ),
                  SizedBox(height: 40..h,),
                  HText(text: 'Enable Your Location',
                  fontSize: 28..sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text('Choose your location to start find the request around you.',
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                              fontSize: 14..sp,
                              fontWeight:  FontWeight.w400,
                              color: AppColors.black.withOpacity(.25),
                              overflow: TextOverflow.fade
                          )
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 50..h,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmLocation(),));
                      },
                      child: Button1(text: 'Enable your Location')),
                ],
              ),
              Positioned(
                // left: 20..w,
                top: 15..h,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,
                    color: AppColors.black,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
