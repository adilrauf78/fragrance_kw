import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fragrance_kw/NavigationBar/account/credit&debitcard.dart';
import 'package:fragrance_kw/constants/colors.dart';
import 'package:fragrance_kw/constants/textField.dart';

import '../../constants/custom_text.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background_Color,
        body: Padding(
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
                  HText(text: 'Payment Method',
                    fontSize: 16..sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Container(
                    width: 20..w,
                  )
                ],
              ),
              SizedBox(height: 20..h,),
              HText(text: 'Cash on Delivery',
              fontSize: 16..sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10..h,),
              Container(
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
                    SvgPicture.asset('assets/svgIcons/cash.svg'),
                    SizedBox(width: 10..w,),
                    HText(text: 'Cash on Delivery',
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15..h,),
              HText(text: 'Credit & Debit Card',
                fontSize: 16..sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10..h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreditDebitCard(),));
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
                      HText(text: 'Credit & Debit Card',
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
