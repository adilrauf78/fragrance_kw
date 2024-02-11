import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/account/settings.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../constants/custom_text.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    HText(text: 'MyAccount',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
                        },
                        child: SvgPicture.asset('assets/svgIcons/settings.svg'))
                  ],
                ),
              ),
              SizedBox(height: 30..h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 55..h,
                      width: 55..w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.fill
                        )
                      ),

                    ),
                    SizedBox(width: 15..w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HText(text: 'Matlita Brown',
                        fontSize: 18..sp,
                          color: AppColors.color2,
                        ),
                        HText(text: 'mitcheles@email.com',
                          fontSize: 16..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20..h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                decoration: BoxDecoration(
                  color: AppColors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        HText(text: '3',
                        fontSize: 12..sp,
                          color: Color(0xFF747474),
                        ),
                        SizedBox(height: 5..h,),
                        HText(text: 'Coupons',
                          fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        HText(text: '0',
                          fontSize: 12..sp,
                          color: Color(0xFF747474),
                        ),
                        SizedBox(height: 5..h,),
                        HText(text: 'Points',
                          fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/svgIcons/wallet.svg'),
                        HText(text: 'Wallet',
                        fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/svgIcons/giftCard.svg'),
                        HText(text: 'Gift Card',
                        fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10..h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                    color: AppColors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HText(text: 'My Orders',
                    fontSize: 14..sp,
                      color: AppColors.color2,
                    ),
                    SizedBox(height: 10..h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/unPaid.svg'),
                            HText(text: 'Unpaid',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/processing.svg'),
                            HText(text: 'Processing',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/shipped.svg'),
                            HText(text: 'Shipped',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/review.svg'),
                            HText(text: 'Review',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/return.svg'),
                            HText(text: 'Returns',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10..h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                    color: AppColors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HText(text: 'More Services',
                      fontSize: 14..sp,
                      color: AppColors.color2,
                    ),
                    SizedBox(height: 10..h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/support.svg'),
                            HText(text: 'Support',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/policy.svg'),
                            HText(text: 'Privacy Policy',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/conditions.svg'),
                            HText(text: 'Terms & Condition',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/svgIcons/faqs.svg'),
                            HText(text: 'Faqs',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10..h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                    color: AppColors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HText(text: 'Wishlist',
                      fontSize: 14..sp,
                      color: AppColors.color2,
                    ),
                    SizedBox(height: 10..h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SText(text: 'Add Favorite product to your wishlist',
                        fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SText(text: '1',
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15..h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: HText(text: 'Recommended for you',
                fontSize: 16..sp,
                ),
              ),
              SizedBox(height: 15..h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
