import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/NavigationBar/cart/Confirmation.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../constants/custom_text.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  List<Map<String, dynamic>> items = [
    {'text': 'Remove'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    HText(text: 'Checkout',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 20..h,),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.black.withOpacity(.25),
                                  blurRadius: 4
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  height: 90..h,
                                  width: 90..w,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF9F9F9),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Image.asset('assets/images/image.png'),
                                ),
                                SizedBox(width: 10..w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HText(text: 'Marc Avento',
                                      fontSize: 16..sp,
                                    ),
                                    HText(text: 'Blend Eau de Parfum',
                                      fontSize: 12..sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    SizedBox(height: 20..h,),
                                    Row(
                                      children: [
                                        HText(text: 'د.ك',
                                          fontSize: 16..sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        SizedBox(width: 5..w,),
                                        HText(text: '15.500',
                                          fontSize: 16..sp,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10..h,),
                            Divider(
                              color: AppColors.black.withOpacity(.05),
                              height: 1,
                            ),
                            SizedBox(height: 8..h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      items.removeAt(index);
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: AppColors.border_Color
                                        )
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset('assets/svgIcons/remove.svg'),
                                        SizedBox(width: 10..w,),
                                        HText(text: items[index]['text'],
                                          fontSize: 8..sp,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(
                                              color: AppColors.border_Color
                                          )
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset('assets/svgIcons/heart1.svg'),
                                          SizedBox(width: 10..w,),
                                          HText(text: 'Add to favorites',
                                            fontSize: 8..sp,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5..w,),
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(
                                              color: AppColors.border_Color
                                          )
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          HText(text: '1',
                                            fontSize: 10..sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.cream,
                                          ),
                                          SizedBox(width: 10..w,),
                                          HText(text: 'Quantity',
                                            fontSize: 8..sp,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                HText(text: 'Delivery Address',
                  fontWeight: FontWeight.w700,
                  fontSize: 16..sp,
                  color: AppColors.subColor,
                ),
                SizedBox(height: 15..h,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(.25),
                        blurRadius: 4
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SText(text: 'Deliver To: Home',
                      fontSize: 14..sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.color2,
                      ),
                      SizedBox(height: 10..h,),
                      SText(text: '3 Newbridge Court Chino Hills, CA 91709, United States',
                        fontSize: 12..sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HText(text: 'Payment',
                    fontSize: 16..sp,
                      fontWeight: FontWeight.w500,
                    ),
                    HText(text: 'Change',
                      fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/card.png',
                    height: 45..h,
                      width: 64..w,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 5..w,),
                    HText(text: '**** **** **** 3947',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                HText(text: 'Order Summary',
                  fontSize: 16..sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 8..h,),
                Divider(
                  color: AppColors.black.withOpacity(.10),
                  height: 1,
                ),
                SizedBox(height: 8..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SText(text: 'Item Total',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        HText(text: 'د.ك',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5..w,),
                        HText(text: '32.38',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SText(text: 'Discount',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        HText(text: 'د.ك',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5..w,),
                        HText(text: '0.00',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SText(text: 'Shipping Flat Rate',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        HText(text: 'د.ك',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5..w,),
                        HText(text: '2.62',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SText(text: 'Delivery Charges',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        HText(text: 'د.ك',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5..w,),
                        HText(text: '5.00',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8..h,),
                Divider(
                  color: AppColors.black.withOpacity(.10),
                  height: 1,
                ),
                SizedBox(height: 8..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SText(text: 'Total',
                      fontSize: 18..sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    Row(
                      children: [
                        HText(text: 'د.ك',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5..w,),
                        HText(text: '40.00',
                          fontSize: 18..sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50..h,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmation(),));
                    },
                    child: Button1(text: 'Confirm'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
