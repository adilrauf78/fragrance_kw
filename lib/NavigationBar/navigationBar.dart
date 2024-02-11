import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fragrance_kw/NavigationBar/account/account.dart';
import 'package:fragrance_kw/NavigationBar/cart/cart.dart';
import 'package:fragrance_kw/NavigationBar/category/category.dart';
import 'package:fragrance_kw/NavigationBar/choice/choice.dart';
import 'package:fragrance_kw/NavigationBar/home/home.dart';
import '../../constants/colors.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentTab = 0;
  List _pages = [
    HomeScreen(),
    Category(),
    Choice(),
    Cart(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Add this line
        currentIndex: currentTab,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        selectedItemColor: AppColors.cream,
        unselectedItemColor: AppColors.subColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgIcons/home.svg",
              color: currentTab == 0 ? AppColors.cream : AppColors.subColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgIcons/category.svg",
              color: currentTab == 1 ? AppColors.cream : AppColors.subColor,
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgIcons/choice.svg",
              color: currentTab == 2 ? AppColors.cream : AppColors.subColor,
            ),
            label: 'Choice',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgIcons/cart.svg",
              color: currentTab == 3 ? AppColors.cream : AppColors.subColor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgIcons/account.svg",
              color: currentTab == 4 ? AppColors.cream : AppColors.subColor,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: _pages[currentTab],
    );
  }
}
