import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../constants/custom_text.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
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
                        size: 15,
                      ),
                    ),
                    HText(text: 'Payment',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 20..h,),
                Container(
                    height: 200..h,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/card4.png',
                    fit: BoxFit.fill,
                    )),
                SizedBox(height: 20..h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  height: 60..h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: AppColors.border_Color
                      )
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name on card',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 12),
                      height: 60..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '5546 8205 3693 3947',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Card Number',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 12),
                      height: 60..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '05/23',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Expiry Date',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 12),
                      height: 60..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '567',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('CVV',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 110..h,),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button1(text: 'Add Card'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
