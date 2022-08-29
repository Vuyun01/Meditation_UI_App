import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/home/components/bottomnavitem.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            onTap: (){},
            icon: AppAssets.calendar,
            text: "Today",
            isActive: true,
          ),
          BottomNavItem(
            onTap: (){},
            icon: AppAssets.gym,
            text: "All Excercises",
          ),
          BottomNavItem(
            onTap: (){},
            icon: AppAssets.setting,
            text: "Settings",
          )
        ],
      ),
    );
  }
}

