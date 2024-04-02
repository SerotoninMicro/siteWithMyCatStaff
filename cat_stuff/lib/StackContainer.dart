import 'package:cat_stuff/WhiteBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.02,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                'Anastasia\n'
                'Lebed',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.04),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * -0.1,
            left: MediaQuery.of(context).size.width * 0.5,
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.7,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Image(image: AssetImage('lib/icons/cat.png')),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: MediaQuery.of(context).size.width * 0.02,
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image(image: AssetImage('lib/icons/pfp.png')),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * -0.07,
            left: MediaQuery.of(context).size.width * 0.82,
            child: GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(
                    'https://github.com/SerotoninMicro/siteWithMyCatStaff'));
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.18,
                width: MediaQuery.of(context).size.width * 0.18,
                child: Icon(Ionicons.logo_github,
                    color: Color(0xFFD48C5C),
                    size: MediaQuery.of(context).size.width * 0.04),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * -0.07,
            left: MediaQuery.of(context).size.width * 0.88,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                    Uri.parse('https://www.linkedin.com/in/anastasialebed/'));
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.18,
                width: MediaQuery.of(context).size.width * 0.18,
                child: Icon(Ionicons.logo_linkedin,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.04),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.15,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                'At this moment is: Flutter Developer,\n'
                'looking for work.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                      color: Color(0xFFD48C5C),
                      fontSize: MediaQuery.of(context).size.width * 0.01),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.02,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                kLongText,
                textAlign: TextAlign.justify,
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.01),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            left: 0,
            child: WhiteBox(),
          ),
        ],
      ),
    );
  }
}

const String kLongText =
    "/hello i'm nastya, a dedicated Web developer with a strong focus on frontend development. while I'm still sharpening my skills in backend development, i'm making significant progress each day. i take pride in being a full-stack developer, having personally crafted this site from scratch—from initial design concepts to backend implementation. programming and development aren't just my profession; they're my passion. i thrive on the daily challenges they bring, constantly seeking opportunities to grow and improve. i'm excited to share more about my journey and projects with you. let's connect and explore potential collaborations or simply exchange insights within the dynamic world of web development!";
