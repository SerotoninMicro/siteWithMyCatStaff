import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: SizedBox(),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 3000,
                child: const StackContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

class WhiteBox extends StatelessWidget {
  const WhiteBox({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 2,
      height: MediaQuery.of(context).size.height * 2.5,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width * 0.3,
            child: GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(
                    'https://drive.google.com/file/d/1J7gaNxbjnBbDn-vORJdY0-5Srd0ZhjGM/view?usp=sharing'));
              },
              child: Container(
                height: 90,
                width: 90,
                child: const Icon(Ionicons.document,
                    color: Colors.black, size: 90.0),
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 5,
            child: SizedBox(
              width: 622,
              height: 127,
              child: Text(
                '  /coding',
                style: GoogleFonts.ubuntu(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 100),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 0,
            child: Container(
              width: 800,
              height: 874,
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kLongText,
                          style: GoogleFonts.ubuntu(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: MediaQuery.of(context).size.width * 0.6,
            child: SizedBox(
              width: 800,
              height: 300,
              child: Text(
                '/nutcracker\n'
                '    company',
                style: GoogleFonts.ubuntu(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 100),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Positioned(
            top: 1050,
            left: MediaQuery.of(context).size.width * 0.55,
            child: Container(
              width: 600,
              height: 500,
              child: Text(
                "Developing the frontend and server-side components, structuring the project's architecture, working with abstractions, legacy code, and complex architectures.",
                style: GoogleFonts.ubuntu(
                  textStyle: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ),
          Positioned(
            top: 1300,
            left: 30,
            child: SizedBox(
              width: 800,
              height: 300,
              child: Text(
                "Two years in freelance",
                style: GoogleFonts.ubuntu(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 100),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Positioned(
            top: 1600,
            left: 30,
            child: Container(
              width: 600,
              height: 500,
              child: Text(
                "As a freelancer, I specialize in frontend development, collaborating with clients to enhance their digital presence. This includes crafting intuitive user interfaces, optimizing website performance, and ensuring seamless integration of frontend components. Additionally, I have experience in structuring project architectures, handling legacy code, and tackling complex frontend challenges to deliver high-quality solutions to my clients.",
                style: GoogleFonts.ubuntu(
                  textStyle: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String kLongText =
    "Hello! I'm Nastya, a dedicated Web Developer with a strong focus on Frontend development. While I'm still sharpening my skills in Backend development, I'm making significant progress each day. I take pride in being a full-stack developer, having personally crafted this site from scratch—from initial design concepts to backend implementation. Programming and development aren't just my profession; they're my passion. I thrive on the daily challenges they bring, constantly seeking opportunities to grow and improve. I'm excited to share more about my journey and projects with you. Let's connect and explore potential collaborations or simply exchange insights within the dynamic world of web development!";
