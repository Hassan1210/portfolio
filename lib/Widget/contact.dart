import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:url_launcher/link.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key,required this.image,required this.link}) : super(key: key);
  final String image;
  final String link;
  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(link),
      target: LinkTarget.blank,
      builder: (context,fellowLink)=>InkWell(
        onTap: fellowLink,
        child: SvgPicture.asset(
            image,height: 25,width: 20,
            color: image== "assets/icons/facebook.svg"?null:AppColors.kTextColor,
        ),
      ),
    );
  }
}
