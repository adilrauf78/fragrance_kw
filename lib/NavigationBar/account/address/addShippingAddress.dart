import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../../constants/custom_text.dart';

class AddShipping extends StatefulWidget {
  const AddShipping({super.key});

  @override
  State<AddShipping> createState() => _AddShippingState();
}

class _AddShippingState extends State<AddShipping> {
  List<Map<String, dynamic>> list = [
    {'text' : 'Home'},
    {'text' : 'Office'},
    {'text' : 'Others'},
  ];
  int value = 0;
  String selectedValue = 'United States';
  String selectedValue1 = 'Chino Hills';
  String selectedValue2 = 'California';
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
                    HText(text: 'Add Shipping Addresses',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 30..h,),
                SizedBox(
                  height: 35..h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              value = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            decoration: BoxDecoration(
                                color: value==index? AppColors.blue : AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: value==index ? AppColors.blue:AppColors.black
                              )
                            ),
                            child: Center(
                              child: HText(text: list[index]['text'],
                              fontSize: 16..sp,
                                fontWeight: FontWeight.w400,
                                color: value==index? AppColors.white: AppColors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Mitchles Brown',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Name',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '+923234471436',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Phone Number',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10..h,),
                HText(text: 'Address',
                fontSize: 16..sp,
                  color: AppColors.color2,
                ),
                SizedBox(height: 10..h,),
                Container(
                  padding: EdgeInsets.only(left: 15,top: 12,bottom: 12),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: AppColors.border_Color
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Select your location From Map',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                      SizedBox(height: 15..h,),
                      Text('3 Newbridge Court',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2
                      ),
                      ),
                      Text('Chino Hills, CA 91709, United States',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color2
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Container(
                  padding: EdgeInsets.only(left: 15,right: 10,top: 12),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Country',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                      DropdownButton<String>(
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
                          'United States',
                          'Pakistan',
                          'India',
                          'England'
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
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Container(
                  padding: EdgeInsets.only(left: 15,right: 10,top: 12),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('City/Town',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                      DropdownButton<String>(
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
                          'Chino Hills',
                          'Pakistan',
                          'India',
                          'England'
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
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Container(
                  padding: EdgeInsets.only(left: 15,right: 10,top: 12),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('State/Province/Region',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                      DropdownButton<String>(
                        borderRadius: BorderRadius.circular(16),
                        dropdownColor: AppColors.background_Color,
                        isExpanded: true,
                        value: selectedValue2,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2
                        ),
                        items: [
                          'California',
                          'Pakistan',
                          'India',
                          'England'
                        ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            selectedValue2 = value ?? '';
                          });
                        },
                        underline: Container(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '3 Newbridge Court',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Street Address',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15..h,),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '3 Newbridge Court',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Block',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15..h,),
                value== 1? Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '3 Newbridge Court',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Office',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ) :
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '3 Newbridge Court',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('House Number',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15..h,),
                value == 1?
                  Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'California',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Flat & Floor',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ) :
                  Container(),
                SizedBox(height: 15..h,),
                value == 1?
                  Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '91876',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Building',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ):
                Container(),
                SizedBox(height: 15..h,),
                value == 1?
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      height: 70..h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColors.border_Color
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '3 Newbridge Court',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color2
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:  10,
                      left: 15,
                      child: Text('Company Name',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color2.withOpacity(.5)
                        ),
                      ),
                    ),
                  ],
                ):
                Container(),
                value == 1?
                SizedBox(height: 20..h,):
                Container(),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button1(text: 'Confirm')),
                SizedBox(height: 20..h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
