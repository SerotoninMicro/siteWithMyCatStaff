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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: 42,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                'Anastasia\n'
                'Lebed',
                style: GoogleFonts.ubuntu(
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 100),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: MediaQuery.of(context).size.width * 0.8,
            child: GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(
                    'https://github.com/SerotoninMicro/siteWithMyCatStaff'));
              },
              child: Container(
                height: 90,
                width: 90,
                child: Icon(Ionicons.logo_github,
                    color: Color(0xFFD48C5C), size: 90.0),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: MediaQuery.of(context).size.width * 0.9,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                    Uri.parse('https://www.linkedin.com/in/anastasialebed/'));
              },
              child: Container(
                height: 90,
                width: 90,
                child: Icon(Ionicons.logo_linkedin,
                    color: Colors.white, size: 90.0),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 350,
            child: Container(
              width: 250,
              height: 874,
              child: Text(
                'At this moment is: Flutter Developer,\n'
                'looking for work.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.ubuntu(
                  textStyle:
                      const TextStyle(color: Color(0xFFD48C5C), fontSize: 25),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 42,
            child: Container(
              width: 1000,
              height: 874,
              child: Text(
                kLongText,
                textAlign: TextAlign.justify,
                style: GoogleFonts.ubuntu(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.7,
            left: 0,
            child: const WhiteBox(),
          ),
        ],
      ),
    );
  }
}
