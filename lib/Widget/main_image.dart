import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';
import 'package:url_launcher/link.dart';

class MainImage extends StatelessWidget {
  const MainImage({Key? key, required this.size, required this.imageSize})
      : super(key: key);
  final double size;
  final double imageSize;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black26,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * imageSize,
          child: Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black26,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * imageSize,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: h! / 20, left: 20),
              child: Text("Discover my Amazing\nArt Space!",
                  style: GoogleFonts.getFont(
                    'Roboto Slab',
                    fontSize: MediaQuery.of(context).size.height / size,
                    letterSpacing: 1,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  w! > 700
                      ?const FlutterText():Container(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: DefaultTextStyle(
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.getFont(
                        'Roboto Slab',
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: animatedLines,
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                  w! > 700
                      ?const FlutterText():Container(),
                ],
              ),
            ),
            w! > 700 && h! > 600
                ? Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(socialMediaLinks[1],
                      ),
                      builder:(context,link)=> ElevatedButton(
                        onPressed: link,
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.kPrimaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                        ),
                        child: Text(
                          "Explore Now",
                          style: TextStyle(
                            color: AppColors.kSecondaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}

class FlutterText extends StatelessWidget {
  const FlutterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("<",style: GoogleFonts.getFont(
          'Roboto Slab',
          fontSize: 16,
          letterSpacing: 1,
          color: Colors.white,
        ),),
        Text("flutter",style: GoogleFonts.getFont(
          'Roboto Slab',
          fontSize: 16,
          letterSpacing: 1,
          color: AppColors.kPrimaryColor,
        ),),
        Text(">",style: GoogleFonts.getFont(
          'Roboto Slab',
          fontSize: 16,
          letterSpacing: 1,
          color: Colors.white,
        ),),
      ],
    );
  }
}

