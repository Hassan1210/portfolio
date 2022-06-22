
import 'package:flutter/material.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import 'package:potfolio/Utilities/sacroll_class.dart';
import 'package:potfolio/Utilities/style.dart';
import 'package:url_launcher/link.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ratio() {
      if (MediaQuery.of(context).size.width == 768) {
        return 1.65;
      }
      if (MediaQuery.of(context).size.width == 1024) {
        return 1.45;
      }
      else if (MediaQuery.of(context).size.width < 330) {
        return 1.4;
      }
      if (MediaQuery.of(context).size.width <= 350) {
        return 1.5;
      } else if (MediaQuery.of(context).size.width > 350 &&
          MediaQuery.of(context).size.width <= 400){
        return 1.5;
      }
      else if (MediaQuery.of(context).size.width > 400 &&
          MediaQuery.of(context).size.width <= 430){
        return 2;
      }
      else if (MediaQuery.of(context).size.width > 450 &&
          MediaQuery.of(context).size.width <= 500){
        return 2.2;
      }
      else if (MediaQuery.of(context).size.width > 430 &&
          MediaQuery.of(context).size.width <= 450){
        return 2.2;
      }
      else if (MediaQuery.of(context).size.width > 500 &&
          MediaQuery.of(context).size.width <= 600){
        return 2.5;
      }
      else if (MediaQuery.of(context).size.width > 600 &&
          MediaQuery.of(context).size.width <= 699){
        return 3;
      }
      else if (MediaQuery.of(context).size.width >= 700 &&
          MediaQuery.of(context).size.width < 800){
        return 1.5;
      }
      else if (MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width <= 850){
      return 1.1;
      }
      else if (MediaQuery.of(context).size.width > 850 &&
          MediaQuery.of(context).size.width <= 900){
        return 1.3;
      }
      else if (MediaQuery.of(context).size.width > 900 &&
          MediaQuery.of(context).size.width <= 1024){
        return 1.35;
      }
      else if (MediaQuery.of(context).size.width > 1024 &&
          MediaQuery.of(context).size.width <= 1100){
        return 1.1;
      }
      else if (MediaQuery.of(context).size.width > 1100 && MediaQuery.of(context).size.width <=1150){
      return 1.2;
      }
      else if (MediaQuery.of(context).size.width > 1150 && MediaQuery.of(context).size.width <=1240){
        return 1.3;
      }
      else{
        return 1.5;
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Style.heading2,
          ),
          const SizedBox(
            height: 20,
          ),
          ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: GridView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              itemCount: projects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 800
                    ? MediaQuery.of(context).size.width < 700
                        ? 1
                        : 2
                    : 3,
                childAspectRatio: ratio(),
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) => Container(
                color: AppColors.kSecondaryColor,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projects[index]['name'].toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.heading2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      projects[index]['description'].toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: Style.heading4,
                    ),
                    const Spacer(),

                    Link(
                      target: LinkTarget.blank,
                      uri:Uri.parse(socialMediaLinks[1]),
                       builder:(context,link)=> InkWell(
                         onTap: link,
                         child: Text(
                           "Readmore >>",
                           style: TextStyle(color: AppColors.kPrimaryColor),
                         ),
                       ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


