import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/account/address/addShippingAddress.dart';
import 'package:fragrance_kw/constants/colors.dart';

import '../../../constants/custom_text.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int value = 0;
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
                    HText(text: 'Shipping Addresses',
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
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColors.border_Color
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                HText(text: 'Home',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14..sp,
                                ),
                                HText(text: 'Edit',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14..sp,
                                  color: AppColors.green,
                                ),
                              ],
                            ),
                            SizedBox(height: 5..h,),
                            HText(text: 'Jane Doe',
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            ),
                            HText(text: '(+1) 331 6585 25222',
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            ),
                            HText(text: '3 Newbridge Court',
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            ),
                            HText(text: 'Chino Hills, CA 91709, United States',
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color2,
                            ),
                            SizedBox(height: 10..h,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      value = index;
                                    });
                                  },
                                  child: Container(
                                    height: 20..h,
                                    width: 20..w,
                                    decoration: BoxDecoration(
                                      color: value==index?AppColors.green:AppColors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: AppColors.border_Color
                                      )
                                    ),
                                    child: Center(
                                      child: Icon(Icons.check,
                                        color: AppColors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10..w,),
                                HText(text: 'Use as the shipping address',
                                  fontSize: 14..sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddShipping(),));
                  },
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svgIcons/add.svg'),
                            HText(text: 'Add new shipping address',
                            fontSize: 17..sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blue,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
