import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants/button1.dart';
import '../../constants/custom_text.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  List<File?> images = [];
  File? image2;
  void imagePickerOption(String imageType) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Container(
            color: AppColors.background_Color,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: (){
                        pickImage(ImageSource.camera,imageType);
                        Get.back();
                      },
                      child: Button1(text: 'CAMERA')),
                  SizedBox(height: 10),
                  GestureDetector(
                      onTap: (){
                        pickImage(ImageSource.gallery,imageType);
                        Get.back();
                      },
                      child: Button1(text: 'GALLERY')),
                  SizedBox(height: 10,),
                  GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Button1(text: 'CANCEL'))
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
  pickImage(ImageSource Imagetype,String imagefirst) async {
    final image= await ImagePicker().pickImage(source: Imagetype);
    if (image==null) return;
    final imagetemp =  File(image.path);
    if (imagefirst=='review'){
      this.image2=imagetemp;
      setState(() => images.add(imagetemp));
    }
  }
  bool isToggled = true;
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
                    HText(text: 'Review',
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
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 15),
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
                      HText(text: 'How was the Product?',
                      fontSize: 16..sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.color2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:50),
                        child: Text('Help us improve our service and your experience by your rating',
                        style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                            fontSize: 12..sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black.withOpacity(.25)
                          )
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 10..h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar.builder(
                            initialRating: 0, // Initial rating (you can set it dynamically based on your data)
                            minRating: 1,
                            itemPadding: EdgeInsets.symmetric(horizontal: 5),
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            unratedColor: Color(0xFF999999),
                            itemSize: 28.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating) {
                              // Handle the rating update (you can save the rating in a variable, for example)
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15..h,),
                Container(
                  height: 160..h,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Write a comment',
                      labelStyle: TextStyle(
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black.withOpacity(.25)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 15..h,),
                SizedBox(
                  height: 100.h,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => imagePickerOption('review'),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(.25),
                                blurRadius: 4,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/svgIcons/camera1.svg'),
                              SizedBox(height: 5.h),
                              Text(
                                'Add your photos',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.color2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10..h,),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: images != null
                                        ? ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: 100.w,
                                        height: 100.h,
                                        child: Image.file(
                                          images[index]!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                        : Container(),
                                  ),
                                  Positioned(
                                    top: 2.h,
                                    right: 2.w,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          images.removeAt(index);
                                        });
                                      },
                                      child: Container(
                                        height: 20.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.close_rounded,
                                            color: AppColors.black,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70..h,),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button1(text: 'Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
