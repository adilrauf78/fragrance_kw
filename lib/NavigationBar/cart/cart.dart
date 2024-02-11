
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/cart/checkOut.dart';
import 'package:fragrance_kw/NavigationBar/navigationBar.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Map<String, dynamic>> items = [
    {'text': 'Remove'},
    {'text': 'Remove'},
  ];
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                          },
                          child: Icon(Icons.arrow_back_ios,
                          size: 15,
                          ),
                        ),
                        HText(text: 'My Cart',
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
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          HText(text: 'Deliver to',
                          fontSize: 12..sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(width: 5..w,),
                          HText(text: '26th street, New Kuwait, Kuwait',
                          fontSize: 12..sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cream,
                          ),
                        ],
                      ),
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
                          padding: const EdgeInsets.only(bottom: 20),
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
                    HText(text: 'You might also like',
                    fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 20..h,),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: .7,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: List.generate(10, (index) {
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
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0..h,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.white
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SText(text: 'Total (3 item) :',
                        fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
                        HText(text: 'د.ك45.500',
                        fontSize: 16..sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(height: 10..h,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut(),));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 50..h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HText(text: "Proceed to Checkout",
                            fontSize: 16..sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                            SvgPicture.asset('assets/svgIcons/forwardIcon.svg')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
