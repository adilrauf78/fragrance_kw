import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/NavigationBar/home/filter/filter.dart';
import 'package:fragrance_kw/NavigationBar/home/productDetails.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/custom_text.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Map<String, dynamic>> items =[
    {'text': 'All'},
    {'text': 'OUD'},
    {'text': 'Arabic'},
    {'text': 'French'},
    {'text': 'OUD'},
    {'text': 'Arabic'},
    {'text': 'Classic'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15..h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      height: 45..h,
                      width: MediaQuery.of(context).size.width*.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.border_Color,
                          ),
                          color: AppColors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Transform.scale(
                                scale: 0.5,
                                child: SvgPicture.asset('assets/svgIcons/search.svg')),
                            hintText: 'What are you looking for?',
                            hintStyle: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 14..sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black.withOpacity(.25)
                                )
                            )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen(),));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 45..h,
                        width: MediaQuery.of(context).size.width*.13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.border_Color,
                            ),
                            color: AppColors.white
                        ),
                        child: SvgPicture.asset('assets/svgIcons/filter.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15..h,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 20..h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: HText(text: items[index]['text'],
                          fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    },
                  ),
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
                  children: List.generate(10, (index) {
                    return Stack(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(),));
                          },
                          child: Container(
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
