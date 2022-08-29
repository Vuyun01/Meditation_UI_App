import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class MeditationLessonCard extends StatelessWidget {
  const MeditationLessonCard({
    Key? key, required this.onTap, required this.lessonNum,
  }) : super(key: key);

  final VoidCallback onTap;
  final int lessonNum;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 20,
              spreadRadius: -10,
              color: kShadowColor
            )
          ]
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.meditation_women_small),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Basic ${lessonNum}",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Start your deepen you practice")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding + 10),
              child: Icon(Icons.lock_outline,),
            )
          ],
        ),
      ),
    );
  }
}

