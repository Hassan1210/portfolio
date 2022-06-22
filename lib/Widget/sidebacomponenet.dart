import 'package:flutter/material.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import 'package:potfolio/Utilities/sacroll_class.dart';
import 'package:potfolio/Utilities/style.dart';
import 'package:potfolio/Widget/coding.dart';
import 'package:potfolio/Widget/contact.dart';
import 'package:potfolio/Widget/hobbies.dart';
import 'package:potfolio/Widget/pesonal_info.dart';
import 'package:potfolio/Widget/skills.dart';
import '../Pages/home.dart';

class SideBarComponent extends StatelessWidget {
  const SideBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 15,),
                  PersonalInfo(heading: "Mobile No", answer: personalInfo["phone"].toString()),
                  PersonalInfo(heading: "Country", answer: personalInfo["country"].toString()),
                  PersonalInfo(heading: "City", answer: personalInfo["city"].toString()),
                  PersonalInfo(heading: "Age", answer: personalInfo["age"].toString()),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Divider(),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Skills",textAlign: TextAlign.left,style: Style.heading2,),
                    const SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Skills(heading: skills[0]["name"].toString(), end: skills[0]["percentage"]),
                        Skills(heading: skills[1]["name"], end: skills[1]["percentage"]),
                        Skills(heading: skills[2]["name"],end: skills[2]["percentage"]),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Divider()
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text("Coding",textAlign:
                      TextAlign.left,style: Style.heading2,)),
                  const SizedBox(height: 10,),
                  for ( var i in coding )
                    Coding(heading: i["name"].toString(), end: i["percentage"]),
                  const SizedBox(height: 10,),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: const Divider())
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hobbies",textAlign: TextAlign.left,style: Style.heading2,),
                    const SizedBox(height: 15,),
                    for ( var i in hobbies )
                      Hobbies(label: i.toString()),
                    const SizedBox(height: 20,),
                    const Divider()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Connect Me",textAlign: TextAlign.left,style: Style.heading2,),
                    const SizedBox(height: 15,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      height: 40,
                      color: AppColors.kSecondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Contact(image: "assets/icons/linkedin.svg",link:socialMediaLinks[0].toString()),
                          Contact(image: "assets/icons/github.svg",link:socialMediaLinks[1].toString()),
                          Contact(image: "assets/icons/twitter.svg",link:socialMediaLinks[2].toString()),
                          Contact(image: "assets/icons/facebook.svg",link:socialMediaLinks[3].toString()),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
