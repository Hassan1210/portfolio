import 'package:flutter/material.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import 'package:potfolio/Widget/header.dart';
import 'package:potfolio/Widget/sidebacomponenet.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kBgColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 2,
            color: Colors.black.withOpacity(.4),
          ),
        ],
      ),
      width: 300,
      child: Column(
        children: const [
          Header(),
          SideBarComponent(),
        ],
      ),
    );
  }
}
