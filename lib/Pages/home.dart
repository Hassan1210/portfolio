import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import 'package:potfolio/Utilities/sacroll_class.dart';
import 'package:potfolio/Widget/certificatr.dart';
import 'package:potfolio/Widget/main_image.dart';
import 'package:potfolio/Widget/projects.dart';
import 'package:potfolio/Widget/sidebar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    final ScrollController controller = ScrollController();
    return Scaffold(
      drawer: const Sidebar(),
      appBar: w!<=desktopBreak?AppBar(
        backgroundColor: AppColors.kSecondaryColor,
      ):null,
      body: ScreenTypeLayout(
        mobile: mobile(),
        desktop:desktop(),
        tablet: tablet(),
        breakpoints:  ScreenBreakpoints(
            tablet: tabletBreak.toDouble(),
            desktop: desktopBreak.toDouble(),
            watch: 300
        ),
      )
    );
  }

  Widget desktop(){
    return   Row(
      children:  [
         const Sidebar(),
         Expanded(
           child: Align(
             alignment: Alignment.topLeft,
             child: ScrollConfiguration(
               behavior: MyCustomScrollBehavior(),
               child: SingleChildScrollView(
                 controller: ScrollController(),
                 child: Container(
                   margin: const EdgeInsets.symmetric(horizontal: 16),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       MainImage(size: 20,imageSize: .35,),
                       Projects(),
                       Certificate(),
                     ],
                   ),
                 ),
               ),
             ),
           ),
         )
      ],
    );
  }
  Widget mobile(){
    return   Column(
      children:  [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: const [
                    MainImage(size: 20,imageSize: .33,),
                    Projects(),
                    Certificate(),

                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget tablet(){
    return   Column(
      children:  [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: const [
                    MainImage(size: 20,imageSize: .35,),
                    Projects(),
                    Certificate(),

                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

