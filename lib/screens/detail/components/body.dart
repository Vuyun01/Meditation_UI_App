
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screens/detail/components/sessioncard.dart';
import 'package:meditation_app/widgets/search.dart';

import 'meditationcard.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: kBlueLightColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kDefaultPadding),
              bottomRight: Radius.circular(kDefaultPadding),
            ),
            image: DecorationImage(
              image: AssetImage(AppAssets.meditation_bg), 
              // alignment: Alignment.centerLeft
              fit: BoxFit.fitWidth
            )
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    "Meditation",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 35
                    ),
                  ),
                ),
                Text(
                  "3-10 MIN Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                  child: SizedBox(
                    width: size.width * 0.7,
                    child: Text(
                      "Live happier and healthier by learning the fundamentals of mediation and mindfulness",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        height: 1.5
                      )
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.6, child: SearchField()),
                Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding,
                  children: List.generate(6, (index) => SessionCard(
                    sessionNum: index,
                    isPlayed: currentIndex == index,
                    onTap: (){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ))
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding * 2, bottom: kDefaultPadding),
                  child: Text(
                    "Mediation",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                MeditationLessonCard(lessonNum: 1, onTap: (){},),
                MeditationLessonCard(lessonNum: 2, onTap: (){},),
                MeditationLessonCard(lessonNum: 3, onTap: (){},),

              ],
            ),
          )
        )
      ],
    );
  }
}

