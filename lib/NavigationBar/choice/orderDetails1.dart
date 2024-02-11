import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/NavigationBar/choice/Review.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../constants/custom_text.dart';

class OrderDetailsOrder1 extends StatefulWidget {
  const OrderDetailsOrder1({super.key});

  @override
  State<OrderDetailsOrder1> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetailsOrder1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Stack(
          children: [
            SingleChildScrollView(
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
                        HText(text: 'Order Detail',
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
                              HText(text: 'Delivered',
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
                    SizedBox(height: 15..h,),
                    HText(text: 'Delivery Address',
                      fontWeight: FontWeight.w500,
                      fontSize: 16..sp,
                      color: AppColors.black,
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
                    HText(text: 'Payment',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w500,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        HText(text: '1 item, 1 package',
                        fontSize: 10..sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        HText(text: 'Total:  ',
                          fontSize: 18..sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue,
                        ),
                        HText(text: 'د.ك',
                          fontSize: 18..sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue,
                        ),
                        HText(text: ' 40.00',
                          fontSize: 18..sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        HText(text: 'Paid by cash on delivery',
                          fontSize: 10..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 8..h,),
                    Divider(
                      color: AppColors.black.withOpacity(.10),
                      height: 1,
                    ),
                    SizedBox(height: 10..h,),
                    HText(text: 'Just for you',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10..h,),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: .7,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: List.generate(8, (index) {
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColors.black.withOpacity(.25),
                                        blurRadius: 2
                                    )
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 140..h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                        image: DecorationImage(image: AssetImage('assets/images/image.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.black.withOpacity(.10),
                                    height: 1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HText(text: 'Marc Avento',
                                              fontSize: 12..sp,
                                              color: AppColors.green,
                                            ),
                                            SText(text: 'Blend Eau de Parfum',
                                              fontSize: 10..sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF3E4653),
                                            ),
                                            SText(text: 'Eau de Parfum (100ml)',
                                              fontSize: 8..sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF3E4653),
                                            ),
                                            Row(
                                              children: [
                                                HText(text: 'KWD',
                                                  fontSize: 10..sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blue,
                                                ),
                                                SizedBox(width: 5..w,),
                                                HText(text: '15.500',
                                                  fontSize: 10..sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppColors.blue,
                                                ),
                                                SizedBox(width: 5..w,),
                                                Stack(
                                                  children: [
                                                    HText(text: 'kwd 20',
                                                      fontSize: 8..sp,
                                                      fontWeight: FontWeight.w400,
                                                      color: AppColors.black.withOpacity(.8),
                                                    ),
                                                    Positioned(
                                                      top: 5,
                                                      child: Container(
                                                        height: 1..h,
                                                        width: 30..w,
                                                        color: AppColors.black.withOpacity(.5),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SvgPicture.asset('assets/svgIcons/cart2.svg')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              right: 5..w,
                              top : 5..h,
                              child: Container(
                                padding: EdgeInsets.all(3),
                                height: 25..h,
                                width: 25..w,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.border_Color
                                    )
                                ),
                                child: SvgPicture.asset('assets/svgIcons/heart.svg'),
                              ),
                            )
                          ],
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20..h,
                left: 20..w,
                right: 20..w,
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewScreen(),));
                    },
                    child: Button1(text: 'Rate now')))
          ],
        ),
      ),
    );
  }
}
