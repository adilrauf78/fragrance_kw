import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/NavigationBar/choice/orderDetails.dart';
import 'package:fragrance_kw/NavigationBar/choice/orderDetails1.dart';
import 'package:fragrance_kw/NavigationBar/navigationBar.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/custom_text.dart';

class Choice extends StatefulWidget {
  const Choice({super.key});

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.background_Color,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 15..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                      },
                      child: Icon(Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                    HText(text: 'My Order',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 20..h,),
                TabBar(
                  physics: NeverScrollableScrollPhysics(),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: AppColors.blue,
                  indicatorColor: AppColors.blue,
                  unselectedLabelColor: AppColors.black,
                  labelStyle:GoogleFonts.dmSans(
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blue
                      )
                  ) ,
                  unselectedLabelStyle: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black
                      )
                  ),
                  tabs: [
                    Tab(
                      text: 'Unpaid',
                    ),
                    Tab(
                      text: 'Processing',
                    ),
                    Tab(
                      text: 'Shipped',
                    ),
                    Tab(
                      text: 'Review',
                    ),
                    Tab(
                      text: 'Returns',
                    )
                  ],
                ),
                SizedBox(height: 20..h,),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: 2,
                        padding: EdgeInsets.all(4),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsOrder(),));
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
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
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            HText(text: 'Order#',
                                            fontSize: 14..sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.color2.withOpacity(.5),
                                            ),
                                            HText(text: ' 1947034',
                                              fontSize: 14..sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.black,
                                            ),
                                          ],
                                        ),
                                        HText(text: '05-12-2019',
                                          fontSize: 14..sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.color2.withOpacity(.5),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10..h,),
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
                                        HText(text: 'UnPaid',
                                        fontSize: 16..sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blue,
                                        ),
                                        HText(text: '1 * 15.500',
                                          fontSize: 16..sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 2,
                        padding: EdgeInsets.all(4),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsOrder1(),));
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
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
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            HText(text: 'Order#',
                                            fontSize: 14..sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.color2.withOpacity(.5),
                                            ),
                                            HText(text: ' 1947034',
                                              fontSize: 14..sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.black,
                                            ),
                                          ],
                                        ),
                                        HText(text: '05-12-2019',
                                          fontSize: 14..sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.color2.withOpacity(.5),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10..h,),
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
                                        HText(text: 'Processing',
                                        fontSize: 16..sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blue,
                                        ),
                                        HText(text: '1 * 15.500',
                                          fontSize: 16..sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 2,
                        padding: EdgeInsets.all(4),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(10),
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
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          HText(text: 'Order#',
                                          fontSize: 14..sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color2.withOpacity(.5),
                                          ),
                                          HText(text: ' 1947034',
                                            fontSize: 14..sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                          ),
                                        ],
                                      ),
                                      HText(text: '05-12-2019',
                                        fontSize: 14..sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color2.withOpacity(.5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10..h,),
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
                                      HText(text: 'Shipped',
                                      fontSize: 16..sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blue,
                                      ),
                                      HText(text: '1 * 15.500',
                                        fontSize: 16..sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 2,
                        padding: EdgeInsets.all(4),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(10),
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
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          HText(text: 'Order#',
                                          fontSize: 14..sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color2.withOpacity(.5),
                                          ),
                                          HText(text: ' 1947034',
                                            fontSize: 14..sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                          ),
                                        ],
                                      ),
                                      HText(text: '05-12-2019',
                                        fontSize: 14..sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color2.withOpacity(.5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10..h,),
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
                                      HText(text: 'Review',
                                      fontSize: 16..sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blue,
                                      ),
                                      HText(text: '1 * 15.500',
                                        fontSize: 16..sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 2,
                        padding: EdgeInsets.all(4),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(10),
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
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          HText(text: 'Order#',
                                          fontSize: 14..sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color2.withOpacity(.5),
                                          ),
                                          HText(text: ' 1947034',
                                            fontSize: 14..sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                          ),
                                        ],
                                      ),
                                      HText(text: '05-12-2019',
                                        fontSize: 14..sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color2.withOpacity(.5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10..h,),
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
                                      HText(text: 'Returned',
                                      fontSize: 16..sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.red,
                                      ),
                                      HText(text: '1 * 15.500',
                                        fontSize: 16..sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
