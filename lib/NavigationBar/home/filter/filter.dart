import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/NavigationBar/home/filter/brandFilter.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../../constants/custom_text.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedValue = 'Eau de Parfum';
  String selectedValue1 = '100 ml';
  List<Map<String, dynamic>> list = [
    {'path': 'assets/images/image10.png', 'text': 'Men'},
    {'path': 'assets/images/image10.png', 'text': 'Women'},
    {'path': 'assets/images/image10.png', 'text': 'Unisex'},
    {'path': 'assets/images/image10.png', 'text': 'Niche'},
    {'path': 'assets/images/image10.png', 'text': 'Classic'},
  ];
  int value = 0;
  RangeValues _currentRange = RangeValues(30, 70);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Column(
          children: [
            Padding(
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
                      HText(text: 'Filter',
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w700,
                      ),
                      Container(
                        width: 20..w,
                      )
                    ],
                  ),
                  SizedBox(height: 30..h,),
                  HText(text: 'Categories',
                  fontSize: 16..sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15..h,),
                  SizedBox(
                    height: 70..h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                value = index;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50..h,
                                  width: 50..w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage(list[index]['path']),
                                    fit: BoxFit.fill
                                    ),
                                    border: Border.all(
                                      color: value==index?AppColors.green: Colors.transparent
                                    )
                                  ),
                                ),
                                HText(text: list[index]['text'],
                                fontSize: 12..sp,
                                  fontWeight: FontWeight.w400,
                                  color: value==index?AppColors.green:AppColors.color2,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15..h,),
                  HText(text: 'Type',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15..h,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 10),
                    height: 45..h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.border_Color
                      )
                    ),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(16),
                      dropdownColor: AppColors.background_Color,
                      isExpanded: true,
                      value: selectedValue,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2
                      ),
                      items: [
                        'Eau de Parfum',
                        'Incorrect items',
                        'Order Never Arrived',
                        'Received Wrong Order'
                      ]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value ?? '';
                        });
                      },
                      underline: Container(),
                    ),
                  ),
                  SizedBox(height: 20..h,),
                  HText(text: 'Size',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15..h,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 10),
                    height: 45..h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: AppColors.border_Color
                        )
                    ),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(16),
                      dropdownColor: AppColors.background_Color,
                      isExpanded: true,
                      value: selectedValue1,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2
                      ),
                      items: [
                        '100 ml',
                        'Incorrect items',
                        'Order Never Arrived',
                        'Received Wrong Order'
                      ]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue1 = value ?? '';
                        });
                      },
                      underline: Container(),
                    ),
                  ),
                  SizedBox(height: 20..h,),
                  HText(text: 'Price Range',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10..h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HText(text: 'kwd 0',
                      fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                      HText(text: 'kwd 100',
                      fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(height: 5..h,),
                  SizedBox(
                    height: 20..h,
                    child: RangeSlider(
                      activeColor: AppColors.blue,
                        values: _currentRange,
                        min: 0,
                        max: 100,
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRange = values;
                          });
                        },
                  
                  ),
                              ),
                ],
              ),),
            SizedBox(height: 20..h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BrandFilter(),));
                },
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HText(text: 'Brand',
                          fontSize: 16..sp,
                            fontWeight: FontWeight.w400,
                          ),
                          HText(text: 'ACQUA DI PARMA, AMOUAGE',
                          fontSize: 11..sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                      size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 100..h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Button1(text: 'Apply')),
            )
          ],
        ),
      ),
    );
  }
}
