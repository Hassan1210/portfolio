import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:potfolio/Utilities/style.dart';

import '../Utilities/colors.dart';

class Coding extends StatelessWidget {
  Coding({Key? key, required this.heading, required this.end})
      : super(key: key);
  final String heading;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: end),
          duration: const Duration(seconds: 2),
          builder: (BuildContext context, double value, child) => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(heading, style: Style.heading2),
                        Text((value * 100).toInt().toString() + "%",style: Style.heading3,),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    child: LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: end,
                      backgroundColor: Colors.black26,
                      progressColor: AppColors.kPrimaryColor,
                      animation: true,
                      animationDuration: 2000,
                      barRadius: const Radius.circular(5),
                    ),
                  )
                ],
              )),
    );
  }
}
