import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key, 
    required this.onTap, 
    required this.text, 
    required this.icon, 
    this.isActive = false,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final String icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(icon, color: isActive ? kActiveIconColor : kTextColor),
          Text(text, style: TextStyle(color: isActive ? kActiveIconColor : kTextColor))
        ],
      ),
    );
  }
}