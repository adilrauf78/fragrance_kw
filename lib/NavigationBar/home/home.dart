import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/home/filter/filter.dart';
import 'package:fragrance_kw/NavigationBar/home/productDetails.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _currentIndex1 = -1;
  int _currentIndex2 = 0;


  List<Map<String, dynamic>> items =[
    {'text': 'Men'},
    {'text': 'Women'},
    {'text': 'Unisex'},
    {'text': 'Niche'},
    {'text': 'Classic'},
    {'text': 'Brand'},
    {'text': 'Classic'},
  ];
  List<Map<String, dynamic>> items1 =[
    {'path' : 'assets/images/men.png', 'text': 'Men'},
    {'path' : 'assets/images/women.png', 'text': 'Women'},
    {'path' : 'assets/images/unisex.png', 'text': 'Unisex'},
    {'path' : 'assets/images/niche.png', 'text': 'Niche'},
    {'path' : 'assets/images/men.png', 'text': 'Men'},
    {'path' : 'assets/images/women.png', 'text': 'Women'},
    {'path' : 'assets/images/unisex.png', 'text': 'Unisex'},
    {'path' : 'assets/images/niche.png', 'text': 'Niche'},
  ];
  List<Map<String, dynamic>> items2 =[
    {'path' : 'assets/svgIcons/trending.svg', 'text': 'Trending'},
    {'path' : 'assets/svgIcons/newIn.svg', 'text': 'New in'},
    {'path' : 'assets/svgIcons/deals.svg', 'text': 'Deals'},
    {'path' : 'assets/svgIcons/bestSellers.svg', 'text': 'Best Sellers'},
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
                    HText(text: 'Fragrance kw'),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svgIcons/language.svg'),
                        SizedBox(width: 5..w,),
                        SvgPicture.asset('assets/svgIcons/heart.svg'),
                        SizedBox(width: 5..w,),
                        SvgPicture.asset('assets/svgIcons/cart1.svg'),
                        SizedBox(width: 5..w,),
                        SvgPicture.asset('assets/svgIcons/person1.svg'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svgIcons/loction1.svg'),
                    HText(text: 'Deliver to',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        height: 1..h,
                        width: 5..w,
                        color: AppColors.black,
                      ),
                    ),
                    SText(text: 'Majeedhee Magu Rd, Malé...',
                      fontSize: 12..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: SvgPicture.asset('assets/svgIcons/dropDown.svg'),
                    )
                  ],
                ),
              ),
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
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svgIcons/guard.svg'),
                          SizedBox(width: 5..w,),
                          HText(text: 'Fragrance Kw commitments',
                          fontSize: 12..sp,
                            fontWeight: FontWeight.w400,
                              color: AppColors.white,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          HText(text: 'Privacy Policy',
                            fontSize: 12..sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          ),
                          SizedBox(width: 5..w,),
                          SvgPicture.asset('assets/svgIcons/forward.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/perfume.png'))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/perfume.png'))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/perfume.png'))),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180..h,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                      initialPage:0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 100..w,
                    right: 100..w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          width: _currentIndex == index ? 16 : 8 ,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: _currentIndex == index
                                ? Colors.white
                                : Colors.grey.withOpacity(0.5),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: .8,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: List.generate(items1.length, (index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          _currentIndex1 = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70..h,
                            width: 70..w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(items1[index]['path']),
                              fit: BoxFit.fill
                              )
                            ),
                          ),
                          HText(text: items1[index]['text'],
                          fontSize: 12..sp,
                            fontWeight: FontWeight.w400,
                            color: _currentIndex1 == index ? AppColors.cream : AppColors.black,
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20..h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80..h,
                      width: MediaQuery.of(context).size.width*.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage('assets/images/image1.png'),
                        fit: BoxFit.fill
                        )
                      ),
                    ),
                    Container(
                      height: 80..h,
                      width: MediaQuery.of(context).size.width*.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage('assets/images/image2.png'),
                        fit: BoxFit.fill
                        )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20..h,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.blue
                ),
                child: SizedBox(
                  height: 35..h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20),
                    itemCount: items2.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndex2 = index ;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: _currentIndex2 == index ? AppColors.black :AppColors.cream,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(items2[index]['path'],
                                color: _currentIndex2 == index ? AppColors.white : AppColors.black,
                                ),
                                SizedBox(width: 5..w,),
                                SText(text: items2[index]['text'],
                                  fontSize: 12..sp,
                                  fontWeight: FontWeight.w400,
                                  color: _currentIndex2 == index ? AppColors.white : AppColors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ),
              SizedBox(height: 20..h,),
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
                        GestureDetector(
                          onTap:(){
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
