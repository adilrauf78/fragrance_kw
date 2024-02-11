import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/NavigationBar/home/filter/filter.dart';
import 'package:fragrance_kw/NavigationBar/navigationBar.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late double percentage= (11/12);
  late double value = percentage * 12;
  late double percentage1= (8/12);
  late double value1 = percentage1 * 12;
  late double percentage2= (5/12);
  late double value2 = percentage2 * 12;
  late double percentage3= (3/12);
  late double value3 = percentage3 * 12;
  late double percentage4= (1/12);
  late double value4 = percentage4 * 12;
  List<Map<String, dynamic>> items1 =[
    {'path' : 'assets/images/men.png', 'text': 'Men'},
    {'path' : 'assets/images/women.png', 'text': 'Women'},
    {'path' : 'assets/images/unisex.png', 'text': 'Unisex'},
    {'path' : 'assets/images/niche.png', 'text': 'Niche'},
  ];
  int _currentIndex = 0;
  int _currentIndex1 = 0;
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15..h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back)),
                            SizedBox(width: 5..w,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              height: 45..h,
                              width: MediaQuery.of(context).size.width*.65,
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
                          ],
                        ),
                        GestureDetector(
                          onTap : (){
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
                  SizedBox(
                    height: 335..h,
                    child: Stack(
                      children: [
                        PageView.builder(
                          itemCount: 5,
                          onPageChanged: (value) => {
                            setState(() {
                              _currentIndex = value;
                             })
                          },
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(50),
                              height: 335..h,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset('assets/images/Bimage.png',
                              fit: BoxFit.fill,
                              ),
                            );
                          },
                        ),
                        Positioned(
                          bottom: 5..h,
                          left: 140..w,
                          right: 140..w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(5, (index) {
                              return Container(
                                width: _currentIndex == index ? 16 : 8 ,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: _currentIndex == index
                                      ? AppColors.green
                                      : Colors.grey.withOpacity(0.5),
                                ),
                              );
                            }),
                          ),
                        ),
                        Positioned(
                          bottom: 5..h,
                          right: 25..w,
                          child: Container(
                            height: 30..h,
                            width: 80..w,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.border_Color
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 5..w,),
                                    GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          --number;
                                        });
                                      },
                                      child: Container(
                                        height: 2..h,
                                        width: 12..w,
                                        decoration: BoxDecoration(
                                          color: AppColors.subColor,
                                          borderRadius: BorderRadius.circular(2)
                                        ),

                                      ),
                                    ),
                                    SizedBox(width: 5..w,),
                                  ],
                                ),
                                Text('${number}',
                                style: TextStyle(
                                  fontSize: 20..sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black
                                ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      ++number;
                                    });
                                  },
                                  child: Icon(Icons.add,
                                  color: AppColors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 25..w,
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HText(text: 'Blend Eau de Parfum',
                    fontSize: 18..sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3E4653),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HText(text: 'Marc Avento',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.star,
                        color: AppColors.green,
                          size: 15,
                        ),
                        HText(text: '4.3 (123 Reviews)',
                        fontSize: 12..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15..h,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    color: AppColors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/1.png',
                            height: 35..h,
                              width: 35..w,
                            ),
                            HText(text: 'Women',
                            fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/2.png',
                              height: 35..h,
                              width: 35..w,
                            ),
                            HText(text: 'Floral',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/3.png',
                              height: 35..h,
                              width: 35..w,
                            ),
                            HText(text: 'Eau de Toilette',
                              fontSize: 10..sp,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/4.png',
                              height: 35..h,
                              width: 35..w,
                            ),
                            HText(text: '105ml',
                              fontSize: 12..sp,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15..h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        HText(text: 'Description',
                        fontSize: 16..sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF3E4653),
                        ),
                        // SvgPicture.asset('assets/svgIcons/drop.svg')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HText(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make',
                      fontSize: 12..sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3E4653),
                    ),
                  ),
                  SizedBox(height: 15..h,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    color: AppColors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/5.png',
                              height: 20..h,
                              width: 20..w,
                            ),
                            Text('Fast \nDelivery',
                            style: GoogleFonts.dmSans(
                              textStyle: TextStyle(
                                fontSize: 12..sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blue
                              )
                            ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/6.png',
                              height: 20..h,
                              width: 20..w,
                            ),
                            Text('100% \nAuthentic',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      fontSize: 12..sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blue
                                  )
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/7.png',
                              height: 20..h,
                              width: 20..w,
                            ),
                            Text('Secure \nPayments',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      fontSize: 12..sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blue
                                  )
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/8.png',
                              height: 20..h,
                              width: 20..w,
                            ),
                            Text('Have \nQuestion?',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      fontSize: 12..sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blue
                                  )
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15..h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: HText(text: 'Related Products'),
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
                      children: List.generate(2, (index) {
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
                  SizedBox(height: 15..h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: HText(text: 'You might like'),
                  ),
                  SizedBox(height: 15..h,),
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
                  SizedBox(height: 15..h,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.white,
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
                        HText(text: 'Product Reviews   (134)'),
                        SizedBox(height: 20..h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100..h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      SizedBox(width: 5..w,),
                                      Text('(1)',
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                          fontSize: 10..sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF3E4653),
                                        )
                                      ),
                                      ),
                                      SizedBox(width: 5..w,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      SizedBox(width: 5..w,),
                                      Text('(1)',
                                        style: GoogleFonts.dmSans(
                                            textStyle: TextStyle(
                                              fontSize: 10..sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF3E4653),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 5..w,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      SizedBox(width: 5..w,),
                                      Text('(1)',
                                        style: GoogleFonts.dmSans(
                                            textStyle: TextStyle(
                                              fontSize: 10..sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF3E4653),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 5..w,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      SizedBox(width: 5..w,),
                                      Text('(1)',
                                        style: GoogleFonts.dmSans(
                                            textStyle: TextStyle(
                                              fontSize: 10..sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF3E4653),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 5..w,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        size: 18,
                                        color: AppColors.green,
                                      ),
                                      SizedBox(width: 5..w,),
                                      Text('(1)',
                                        style: GoogleFonts.dmSans(
                                            textStyle: TextStyle(
                                              fontSize: 10..sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF3E4653),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 5..w,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width*.3,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*.5,
                                                child: LinearPercentIndicator(
                                                  animation: true,
                                                  padding: EdgeInsets.zero,
                                                  backgroundColor: AppColors.subColor.withOpacity(.2),
                                                  barRadius: Radius.circular(50..r),
                                                  lineHeight: 7,
                                                  animationDuration: 2500,
                                                  percent: percentage,
                                                  progressColor: AppColors.green,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text('${value.toString()}',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.subColor
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width*.3,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width*.5,
                                              child: LinearPercentIndicator(
                                                animation: true,
                                                padding: EdgeInsets.zero,
                                                backgroundColor: AppColors.subColor.withOpacity(.2),
                                                barRadius: Radius.circular(50..r),
                                                lineHeight: 7,
                                                animationDuration: 2500,
                                                percent: percentage1,
                                                progressColor: AppColors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('${value1.toString()}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.subColor
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width*.3,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width*.5,
                                              child: LinearPercentIndicator(
                                                animation: true,
                                                padding: EdgeInsets.zero,
                                                backgroundColor: AppColors.subColor.withOpacity(.2),
                                                barRadius: Radius.circular(50..r),
                                                lineHeight: 7,
                                                animationDuration: 2500,
                                                percent: percentage2,
                                                progressColor: AppColors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('${value2.toString()}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.subColor
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width*.3,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width*.5,
                                              child: LinearPercentIndicator(
                                                animation: true,
                                                padding: EdgeInsets.zero,
                                                backgroundColor: AppColors.subColor.withOpacity(.2),
                                                barRadius: Radius.circular(50..r),
                                                lineHeight: 7,
                                                animationDuration: 2500,
                                                percent: percentage3,
                                                progressColor: AppColors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('${value3.toString()}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.subColor
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width*.3,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width*.5,
                                              child: LinearPercentIndicator(
                                                animation: true,
                                                padding: EdgeInsets.zero,
                                                backgroundColor: AppColors.subColor.withOpacity(.2),
                                                barRadius: Radius.circular(50..r),
                                                lineHeight: 7,
                                                animationDuration: 2500,
                                                percent: percentage4,
                                                progressColor: AppColors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('${value4.toString()}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.subColor
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height:15..h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HText(text: 'Helene Moore',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.subColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,
                            size: 18,
                              color: AppColors.green,
                            ),
                            Icon(Icons.star,
                              size: 18,
                              color: AppColors.green,
                            ),
                            Icon(Icons.star,
                              size: 18,
                              color: AppColors.green,
                            ),
                            Icon(Icons.star,
                              size: 18,
                              color: AppColors.green,
                            ),
                            Icon(Icons.star,
                              size: 18,
                              color: AppColors.subColor.withOpacity(.5),
                            ),
                          ],
                        ),
                        SText(text: 'August 13, 2019',
                        fontSize: 11..sp,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10..h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HText(text: 'The dress is great! Very classy and comfortable. It fit perfectly! Im  and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I would not recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                    fontSize: 14..sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10..h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 100..h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              height: 100..h,
                              width: 100..w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.border_Color
                                ),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage('assets/images/Rimage.png'),
                                fit: BoxFit.fill
                                )
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 100..h,),
                ],
              ),
            ),
            Positioned(
              bottom: 0..h,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.cream
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SText(text: 'Note: The price will be increased by 10% if you \npurchase only one item.',
                    fontSize: 12..sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red,
                    ),
                    SizedBox(height: 10..h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            HText(text: 'د.ك',
                            fontSize: 20..sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(width: 5..w),
                            HText(text: '15.500',
                              fontSize: 20..sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                          },
                          child: Container(
                            height: 50..h,
                            width: 180..w,
                            decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svgIcons/cart3.svg'),
                                SizedBox(width: 10..w,),
                                HText(text: 'Add to cart',
                                    fontSize: 17..sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
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
