import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/account/payment.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../constants/custom_text.dart';

class CreditDebitCard extends StatefulWidget {
  const CreditDebitCard({super.key});

  @override
  State<CreditDebitCard> createState() => _CreditDebitCardState();
}

class _CreditDebitCardState extends State<CreditDebitCard> {
  List<Map<String,dynamic>> list = [
    {'path':'assets/images/card1.png'},
    {'path':'assets/images/card2.png'},
    {'path':'assets/images/card3.png'},
  ];
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                      size: 15,
                    ),
                  ),
                  HText(text: 'Credit & Debit Card',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Container(
                    width: 20..w,
                  )
                ],
              ),
              SizedBox(height: 30..h,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          value = index;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color : Colors.transparent,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(list[index]['path'],
                                  height: 19..h,
                                  width: 28..w,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 10..w,),
                                HText(text: 'xxxx xxxx xxxx 5647',
                                  fontSize: 16..sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(width: 10..w,),
                                value==index? SvgPicture.asset('assets/svgIcons/check.svg'):Container(),

                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                list.removeAt(index);
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/svgIcons/delete2.svg'),
                                  SizedBox(width: 3..w,),
                                  HText(text: 'Remove',
                                    fontSize: 10..sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.color2,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 10..h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 48..h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: AppColors.border_Color
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svgIcons/choose.svg'),
                      SizedBox(width: 10..w,),
                      HText(text: 'Add Card',
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
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
