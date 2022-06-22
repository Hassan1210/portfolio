import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:potfolio/Utilities/style.dart';

import '../Utilities/colors.dart';

class Skills extends StatelessWidget {
  Skills({Key? key,required this.heading,required this.end}) : super(key: key);
  final String heading;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: end),
          duration: const Duration(seconds: 2),
          builder: (BuildContext context,double value,child) {
            return CircularPercentIndicator(
              animation: true,
              animationDuration: 2000,
              circularStrokeCap: CircularStrokeCap.round,
              radius: 40.0,
              lineWidth: 10.0,
              percent: end,
              center:   Text((value*100).toInt().toString()+"%"),
              backgroundColor: Colors.black26 ,
              progressColor: AppColors.kPrimaryColor,
            );
          },
        ),
        const SizedBox(height: 10,),
        Text(heading, style: Style.heading2),

      ],
    );
  }
}
