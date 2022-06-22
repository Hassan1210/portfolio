import 'package:flutter/material.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/style.dart';

import '../Utilities/const.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          height: 230,
          color: AppColors.kSecondaryColor,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profile.jpeg",),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(personalInfo['name'].toString(), style: Style.heading2),
              const SizedBox(
                height: 10,
              ),
              Text(personalInfo["tagLine"].toString(), style: Style.heading3)
            ],
          ),
        ),
      ),
    );
  }
}
