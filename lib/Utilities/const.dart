import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double? h;
double? w;



int desktopBreak = 1024;
int mobileBreak = 1024;
int tabletBreak = 500;



var personalInfo ={
  "name":"Hassan Qayum",
  "tagLine":"Flutter Developer",
  "phone":"+923081987210",
  "country":"Pakistan",
  "city":"Lahore",
  "age":"21"
};

List skills = [
  {
    "name":"Flutter",
    "percentage":.75
  },
  {
    "name":"Database",
    "percentage":.63
  },
  {
    "name":"ROR",
    "percentage":.41
  }
];


List coding = [
  {
    "name":"C/C++",
    "percentage":.75
  },
  {
    "name":"Dart",
    "percentage":.73
  },
  {
    "name":"OPP",
    "percentage":.68
  },{
    "name":"DSA",
    "percentage":.65
  },
  {
    "name":"HTML & CSS",
    "percentage":.60
  },
  {
    "name":"Python",
    "percentage":.55
  },
];

List hobbies =[
  "Cricket",
  "Badminton",
  "Watching Web Series",
  "Web Surfing"
];

List socialMediaLinks = [
  "https://www.linkedin.com/in/ch-hassan-62055b22a/",
  "https://github.com/Hassan1210",
  "https://twitter.com/CHHassan210?t=OU8o8hLnHxwS8W7koxI4Jg&s=08",
  "https://www.facebook.com/profile.php?id=100017919997295"
];

List<AnimatedText> animatedLines = [
  TyperAnimatedText('I build Home Maintenance app.'),
  TyperAnimatedText('I build Crime Alert app.'),
  TyperAnimatedText('I build Fitness app UI.'),
  TyperAnimatedText('I build Budget Management app.'),
];


List<Color> colorizeColors = [
  Colors.white.withOpacity(.6),
  Colors.purple.withOpacity(.3),
  Colors.yellow.shade600,
  Colors.yellow.shade700,
  Colors.red.shade300,
  Colors.orange.shade300,

];

TextStyle colorizeTextStyle = GoogleFonts.getFont('Roboto Slab',
  fontSize: 16.0,
  color: Colors.white
);

List projects = [
  {
    'name':"Home Maintenance App-Fully Responsive",
    'description':"Batik is the most trusted app for all kinds of home services and repair related jobs. Whether you need an electrician, pest control service, appliance repair, car wash or home cleaning, Mr. Right has you covered."
  },
  {
    'name':"Crime Alert App-Fully Responsive",
    'description':"The most powerful safety app for today’s world. Download Citizen to feel safer at home or out, get real-time safety alerts and live video of incidents happening near you, updates on natural disasters or protests, and know if your loved ones are near a dangerous incident"
  },
  {
    'name':"Fitness App-Fully Responsive UI",
    'description':"Fitness apps are applications designed by companies to keep you fit and healthy. These apps can be downloaded on mobile phones quite easily. The aim of these apps is to make your lifestyle healthier by tracking your food intake, water intake and workout pattern."
  },
  {
    'name':"Contact App Using SQL Database",
    'description':"In this I make a app using Sql database. Where user can save its Contact also delete and Edit"
  },
  {
    'name':"Budget Management App For Android",
    'description':"Khata App makes managing personal finances as easy as pie! Now easily record your personal and business financial transactions, generate spending reports, review your daily, weekly and monthly financial data and manage your assets with Money Manager's spending tracker and budget planner."
  },
  {
    'name':"Portfolio App For Web and Mobile -Fully Responsive",
    'description':"A portfolio is a compilation of materials that exemplifies your beliefs, skills, qualifications, education, training and experiences. It provides insight into your personality and work ethic"
  },
];

List certificate = [
  {
    'name':"Certification for participation in Bootcamp on ROR(Ruby On Rails)",
    'description':"From Devsinc(2022)"
  },
  {
    'name':"Certification for participation in Coding Competition (Game of Code)",
    'description':"From 10Pearls(2022)"
  },
  {
    'name':"Certification for participation in Flutter Development Bootcamp",
    'description':"From Google Developer Society(20221)"
  },
];
