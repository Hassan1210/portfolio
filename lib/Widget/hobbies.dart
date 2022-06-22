import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utilities/style.dart';

class Hobbies extends StatelessWidget {
  Hobbies({Key? key,required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset("assets/icons/check.svg",height: 15,width: 15,),
        const SizedBox(width: 20,),
        Text(label,style: Style.heading3,),
      ],
    );
  }
}
