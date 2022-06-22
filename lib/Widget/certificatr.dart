import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import '../Utilities/sacroll_class.dart';
import '../Utilities/style.dart';

class Certificate extends StatelessWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Certificate",
          style: Style.heading2,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 150,
          child: ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                itemCount: certificate.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 400,
                    color: AppColors.kSecondaryColor,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedTextKit(
                          pause: Duration(microseconds: 1),
                          repeatForever: true,
                          displayFullTextOnTap: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            ColorizeAnimatedText(
                              certificate[index]['name'],
                              textStyle: colorizeTextStyle,
                              colors: colorizeColors,
                            ),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          certificate[index]['description'].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: Style.heading4,
                        ),
                      ],
                    ),
                  );
                }
            ),
          ),
        ),
        const SizedBox(height: 30,)
      ],
    );
  }
}


