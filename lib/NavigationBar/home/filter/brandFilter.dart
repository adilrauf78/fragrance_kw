import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/constants/button1.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/custom_text.dart';

class BrandFilter extends StatefulWidget {
  const BrandFilter({super.key});

  @override
  State<BrandFilter> createState() => _BrandFilterState();
}

class _BrandFilterState extends State<BrandFilter> {
  List<Map<String, dynamic>> list = [
    {'text':'Adidas'},
    {'text':'Adidas Originals'},
    {'text':'Blend'},
    {'text':'Boutique Moschino'},
    {'text':'Champion'},
    {'text':'Diesel'},
    {'text':'Jack & Jones'},
    {'text':'Naf Naf'},
    {'text':'Red Valentino'},
    {'text':'s.Oliver'},
  ];
  Set<int> selectedIndices = {}; // Set to keep track of selected item indices
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: SingleChildScrollView(
          child: Padding(
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
                    HText(text: 'Brands',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 30..h,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  height: 45..h,
                  width: MediaQuery.of(context).size.width,
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
                        hintText: 'Search',
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
                SizedBox(height: 20..h,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedIndices.contains(index)) {
                              selectedIndices.remove(index); // Deselect item if already selected
                            } else {
                              selectedIndices.add(index); // Select item if not already selected
                            }
                          });
                        },
                        child: Container(
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              HText(
                                text: list[index]['text'],
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: selectedIndices.contains(index) ? AppColors.green : AppColors.color2,
                              ),
                              Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  color: selectedIndices.contains(index) ? AppColors.green : AppColors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: AppColors.border_Color,
                                  ),
                                ),
                                child: selectedIndices.contains(index)
                                    ? Center(
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.white,
                                    size: 12,
                                  ),
                                )
                                    : null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 100..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50..h,
                        width: MediaQuery.of(context).size.width*.4,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.black
                          )
                        ),
                        child: Center(
                          child: HText(text: 'Discard',
                            color: AppColors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50..h,
                        width: MediaQuery.of(context).size.width*.4,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: HText(text: 'Apply',
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
