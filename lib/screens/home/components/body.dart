import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screens/detail/detail_screen.dart';
import 'package:meditation_app/screens/home/components/productcard.dart';

import '../../../widgets/search.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map<String, String> data_card = {
      "Diet Recommendation" : AppAssets.hamburger,
      "Kegel Excercises" : AppAssets.excrecise,
      "Meditation" : AppAssets.meditation,
      "Yoga" : AppAssets.yoga,
    };
    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kDefaultPadding),
              bottomRight: Radius.circular(kDefaultPadding),
            ),
            image: DecorationImage(
              image: AssetImage(AppAssets.undraw_pilates), 
              alignment: Alignment.centerLeft
            )
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52, width: 52,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF2BEA1),
                    ),
                    child: SvgPicture.asset(AppAssets.menu)
                  ),
                ),
                Text(
                  "Good Morning\nShishir",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 35
                  )
                ),
                SearchField(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: List.generate(data_card.length, (index) => ProductCard(
                      title: data_card.keys.elementAt(index),
                      image: data_card.values.elementAt(index),
                      onTap: (){
                        Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context)=> DetailScreen()));
                      },
                    ))
                  )
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

