import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

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
            left: MediaQuery.of(context).size.width * 0.33,
            child: GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(
                    'https://drive.google.com/file/d/1J7gaNxbjnBbDn-vORJdY0-5Srd0ZhjGM/view?usp=sharing'));
              },
              child: const SizedBox(
                height: 90,
                width: 90,
                child: Icon(Ionicons.document, color: Colors.black, size: 90.0),
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 5,
            child: SizedBox(
              width: 500,
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
            child: SizedBox(
              width: 800,
              height: 874,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kLongText2,
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
          Positioned(
            top: MediaQuery.of(context).size.width * 0.51,
            left: MediaQuery.of(context).size.width * 0.53,
            child: GestureDetector(
              onTap: () {
                launchUrl(Uri.parse('https://back.nutcracker.lab.upg/#/'));
              },
              child: const SizedBox(
                height: 90,
                width: 90,
                child: Icon(Ionicons.link, color: Colors.black, size: 90.0),
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
            child: SizedBox(
              width: 600,
              height: 500,
              child: Text(
                "Developing the frontend and server-side components, structuring the project's architecture, working with abstractions, and complex architectures. Spearheaded the development of responsive, user-friendly websites using the Flutter Framework, ensuring cross-platform compatibility and optimal performance. Collaborated closely with backend developers to integrate APIs and create seamless, full-stack solutions tailored to client needs. Contributed to the technology strategy, offering insights into frontend technologies that align with business goals to drive innovation and maintain competitive edge.",
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
            child: SizedBox(
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

const String kLongText2 =
    '/my hard skills: Languages: Dart, JavaScript, TypeScript, Go, Python.\n'
    'Technologies: Git, Flutter, React.js,  jQuery, Bootstrap, Flask, ASP.NET, Node.js, Docker, Android SDK, iOS SDK, Dart SDK\n'
    'Concepts: Compiler, Operating System, Virtual Memory, Cache Memory, Encryption, Decryption, Artificial Intelligence, Machine Learning, LLM, Neural Networks, API, Database Normalization, Agile Methodology, Cloud Computing.';
