import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/textField.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants/button1.dart';
import '../../constants/custom_text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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

  File? image1;
  pickImage(ImageSource Imagetype,String imagefirst) async {
    final image= await ImagePicker().pickImage(source: Imagetype);
    if (image==null) return;
    final imagetemp =  File(image.path);
    if (imagefirst=='Profile'){
      this.image1=imagetemp;
      setState(() => this.image1=imagetemp);
    }

  }
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
                    HText(text: 'Edit Profile',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 20..w,
                    )
                  ],
                ),
                SizedBox(height: 30..h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 80..h,
                          width: 80..w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                            child: image1 != null ?Image.file(
                                image1!,fit: BoxFit.cover) : Image.asset("assets/images/profile.png",fit: BoxFit.fill,),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: ()=>imagePickerOption('Profile'),
                            child: Container(
                              padding: EdgeInsets.all(7),
                              height: 30..h,
                              width: 30..w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF677294).withOpacity(.8)
                              ),
                              child: SvgPicture.asset('assets/svgIcons/camera.svg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20..h,),
                TextField1(text: 'First Name', path: 'assets/svgIcons/person.svg'),
                SizedBox(height: 15..h,),
                TextField1(text: 'Last Name', path: 'assets/svgIcons/person.svg'),
                SizedBox(height: 15..h,),
                SText(text: 'Phone',
                  fontSize: 15,
                  color: AppColors.black.withOpacity(.6),
                ),
                SizedBox(height: 10..h,),
                Container(
                  height: 45..h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.border_Color
                      )
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*.35,
                        child: CountryCodePicker(
                          showDropDownButton: true,
                          // flagWidth: 90,
                          padding: const EdgeInsets.all(0),
                          // countryList: countryList,
                          textStyle: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            setState(() {
                              // signUpController.countryCodeUpdate = value;
                            });
                          },
                          initialSelection: "KW",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        width: MediaQuery.of(context).size.width*.52,
                        child: TextField(
                          cursorColor: Color(0xFF9FA3A8),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 230..h,),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button1(text: 'Save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
