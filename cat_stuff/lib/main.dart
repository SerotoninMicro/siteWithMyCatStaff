import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
                height: MediaQuery.of(context).size.height + 2000,
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
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.05, // Adjusted based on proportion
            left: 42, // Adjusted based on proportion
            child: Container(
              width: MediaQuery.of(context).size.width *
                  0.7, // Adjusted based on proportion
              decoration: BoxDecoration(border: Border.all()),

              child: Text(
                'Anastasia\n'
                'Lebed',
                style: GoogleFonts.ubuntu(
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 100),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 42,
            child: Text(
              kLongText,
              textAlign: TextAlign.justify,
              style: GoogleFonts.ubuntu(
                textStyle: const TextStyle(color: Colors.white, fontSize: 25),
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
  const WhiteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 2,
      height: MediaQuery.of(context).size.height * 2,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
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
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 0,
            child: SizedBox(
              width: 800,
              height: 874,
              child: Container(
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      kLongText,
                      style: GoogleFonts.ubuntu(
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  ),
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
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n'
    'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when\n'
    'an unknown printer took a galley of type and scrambled it to make a type\n'
    'specimen book. It has survived not only five centuries, but also the leap into \n'
    'electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s \n'
    'with the release of Letraset sheets containing Lorem Ipsum passages, and more \n'
    'recently with desktop publishing software like Aldus PageMaker including versions \n'
    'of Lorem Ipsum.';

const TextStyle kTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Ubuntu',
  fontSize: 25,
);

const TextStyle kHeaderTextStyle = TextStyle(
  fontSize: 100,
  color: Colors.white,
);
