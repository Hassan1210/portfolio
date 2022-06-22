import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:potfolio/Pages/home.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import 'package:potfolio/Utilities/style.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 5),
            () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.43),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(personalInfo['name'].toString(),style: Style.heading2,),
              const SizedBox(height: 10,),
              Expanded(
                child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(seconds: 3),
                    builder: (BuildContext context, double value, child) => SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          LinearPercentIndicator(
                            lineHeight: 5.0,
                            percent: 1,
                            backgroundColor: Colors.black26,
                            progressColor: AppColors.kPrimaryColor,
                            animation: true,
                            animationDuration: 3000,
                            barRadius: const Radius.circular(5),
                          ),
                          const SizedBox(height: 7,),
                          Text((value * 100).toInt().toString() + "%",style: Style.heading3,),
                        ],
                      ),
                    ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
