import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/account/address/address.dart';
import 'package:fragrance_kw/NavigationBar/account/changePassword.dart';
import 'package:fragrance_kw/NavigationBar/account/editProfile.dart';
import 'package:fragrance_kw/NavigationBar/account/paymentMethod.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../BottomSheet/bottomSheet.dart';
import '../../constants/custom_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchValue = false;
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: ContinueDelete(),
        );
      },
    );
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/svgIcons/cancel.svg',
                      height: 15..h,
                        width: 15..w,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/svgIcons/delete1.svg'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Are you sure you want to delete this account?',
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
                SizedBox(height: 25..h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _showBottomSheet(context);
                          });
                        },
                        child: Container(
                          height: 32..h,
                          width: 90..w,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(5),

                          ),
                          child: Center(
                            child: Text('Yes',
                            style: TextStyle(
                              fontSize: 16..sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white
                            ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 32..h,
                          width: 90..w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(.25),
                                blurRadius: 4
                              )
                            ]

                          ),
                          child: Center(
                            child: Text('No',
                            style: TextStyle(
                              fontSize: 16..sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black
                            ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Column(
          children: [
            SizedBox(height: 15..h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                      size: 15,
                    ),
                  ),
                  HText(text: 'Settings',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Container(
                    width: 20..w,
                  )
                ],
              ),
            ),
            SizedBox(height: 30..h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32..h,
                          width: 32..w,
                          decoration: BoxDecoration(
                            color: Color(0xFF7F7F7F),
                            shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset('assets/svgIcons/edit.svg'),
                        ),
                        SizedBox(width: 20..w,),
                        HText(text: 'Edit Profile',
                        fontSize: 16..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                    size: 16,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32..h,
                          width: 32..w,
                          decoration: BoxDecoration(
                              color: Color(0xFF7F7F7F),
                              shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset('assets/svgIcons/change.svg'),
                        ),
                        SizedBox(width: 20..w,),
                        HText(text: 'Change Password',
                          fontSize: 16..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddressScreen(),));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32..h,
                          width: 32..w,
                          decoration: BoxDecoration(
                              color: Color(0xFF7F7F7F),
                              shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset('assets/svgIcons/address.svg'),
                        ),
                        SizedBox(width: 20..w,),
                        HText(text: 'Address',
                          fontSize: 16..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod(),));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32..h,
                          width: 32..w,
                          decoration: BoxDecoration(
                              color: Color(0xFF7F7F7F),
                              shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset('assets/svgIcons/payment.svg'),
                        ),
                        SizedBox(width: 20..w,),
                        HText(text: 'Payment method',
                          fontSize: 16..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            Container(
              padding: EdgeInsets.only(left: 20,right: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 32..h,
                        width: 32..w,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F7F7F),
                            shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset('assets/svgIcons/notification.svg'),
                      ),
                      SizedBox(width: 20..w,),
                      HText(text: 'Notification',
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color2,
                      )
                    ],
                  ),
                  Transform.scale(
                    scale: 0.5,
                    child: CupertinoSwitch(
                        activeColor: AppColors.blue,
                        value: _switchValue,
                        onChanged: (value){
                          setState(() {
                            _switchValue =value;
                          });
                        }
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 32..h,
                        width: 32..w,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F7F7F),
                            shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset('assets/svgIcons/language1.svg'),
                      ),
                      SizedBox(width: 20..w,),
                      HText(text: 'Language',
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color2,
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                    size: 16,
                  )
                ],
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 32..h,
                        width: 32..w,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F7F7F),
                            shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset('assets/svgIcons/about.svg'),
                      ),
                      SizedBox(width: 20..w,),
                      HText(text: 'About Us',
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color2,
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                    size: 16,
                  )
                ],
              ),
            ),
            SizedBox(height: 10..h,),
            Divider(
              color: AppColors.black.withOpacity(.10),
              height: 1,
            ),
            SizedBox(height: 10..h,),
            GestureDetector(
              onTap: (){
                setState(() {
                  _showCustomPopup(context);
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svgIcons/delete.svg'),
                    SizedBox(width: 20..w,),
                    HText(text: 'Delete Account',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.red,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10..h,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.white
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svgIcons/logOut.svg'),
                  SizedBox(width: 20..w,),
                  HText(text: 'Logout',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
