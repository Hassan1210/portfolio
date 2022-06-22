import 'package:flutter/material.dart';

import '../Utilities/style.dart';

class PersonalInfo extends StatelessWidget {
   PersonalInfo({Key? key,required this.heading,required this.answer}) : super(key: key);
  final String heading;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading,style: Style.heading2,),
          Text(answer,style: Style.heading3,)
        ],
      ),
    );
  }
}
