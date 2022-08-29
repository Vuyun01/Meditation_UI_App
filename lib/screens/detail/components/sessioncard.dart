import 'package:flutter/material.dart';

import '../../../constants.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key, required this.sessionNum, this.isPlayed = false, required this.onTap,  
  }) : super(key: key);

  final int sessionNum;
  final bool isPlayed;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
            width: constraints.maxWidth / 2 - 10,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 10,
                  spreadRadius: -10,
                  color: kShadowColor
                )
              ]
            ),
            child: Row(
              children: [
                Container(
                  height: 42, width: 42,
                  decoration: BoxDecoration(
                    color: isPlayed ? kBlueColor : Colors.white, shape: BoxShape.circle,
                    border: Border.all(color: kBlueColor, width: 2)
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: isPlayed ? Colors.white : kBlueColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Text(
                    "Session 0${sessionNum+1}",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          )
      ),
    );
    
  }
}