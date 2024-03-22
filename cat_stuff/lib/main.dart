import 'package:flutter/material.dart';

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
        child: SizedBox(), // Replace with your NavBar widget
      ),
      body: SingleChildScrollView(
        controller: _scrollController, // Assign ScrollController here
        physics:
            const AlwaysScrollableScrollPhysics(), // Allow smooth scrolling
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 1000,
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

              child: const Text(
                'Anastasia\n'
                'Lebed',
                style: kHeaderTextStyle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.35, // Place under the text
            left: 42,
            child: const Text(
              kLongText,
              textAlign: TextAlign.justify,
              style: kTextStyle,
            ),
          ),
          Positioned(
            top:
                MediaQuery.of(context).size.width * 0.7, // Place under the text
            left: 0, // Align with the left edge
            child: const WhiteBox(),
          ),
          // const Positioned(
          //   top: 573, // Place under the text
          //   left: 600, // Place next to the first box
          //   child: OrangeBox(),
          // ),
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
      width:
          MediaQuery.of(context).size.width * 2, // Adjusted based on proportion
      height: MediaQuery.of(context).size.height *
          2, // Adjusted based on proportion
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          const Positioned(
            top: 30,
            left: 10,
            child: SizedBox(
              width: 622,
              height: 127,
              child: Text(
                '  /coding',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 60, // Adjusted font size to match the requirements
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Positioned(
            top: 127, // Below the first text
            left: 0,
            child: SizedBox(
              width: 607, // Adjusted width to match the specified parameters
              height: 874, // Adjusted height to match the specified parameters
              child: Container(
                width: 607,
                height: 874,
                decoration: const BoxDecoration(),
                child: const SingleChildScrollView(
                  // Add a SingleChildScrollView to ensure scrolling if text overflows
                  child: Padding(
                    padding: EdgeInsets.all(
                        30.0), // Add padding of 10 pixels on each side
                    child: Text(
                      kLongText,
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                        color: Colors.black,
                        decoration: TextDecoration.none,
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

// class OrangeBox extends StatelessWidget {
//   const OrangeBox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width:
//           MediaQuery.of(context).size.width * 2, // Adjusted based on proportion
//       height: MediaQuery.of(context).size.height *
//           2, // Adjusted based on proportion

//       child: Stack(
//         children: [
//           Container(
//             color: const Color(0xFFFF5C00),
//             child: Positioned(
//               top: 0, // Add top position
//               left: MediaQuery.of(context).size.width / 2 - 607 / 2,
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width *
//                     2, // Adjusted width to match the specified parameters
//                 height: MediaQuery.of(context).size.width *
//                     2, // Adjusted height to match the specified parameters
//               ),
//             ),
//           ),
//           const Positioned(
//             top: 30,
//             left: 10,
//             child: SizedBox(
//               width: 622,
//               height: 127,
//               child: Text(
//                 '  /design',
//                 style: TextStyle(
//                   fontFamily: 'Ubuntu',
//                   fontSize: 60, // Adjusted font size to match the requirements
//                   color: Colors.white,
//                   decoration: TextDecoration.none,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 127, // Below the first text
//             left: 10, // Centered horizontally
//             child: SizedBox(
//               width: 607, // Adjusted width to match the specified parameters
//               height: 874, // Adjusted height to match the specified parameters
//               child: Container(
//                 width: 607,
//                 height: 874,
//                 decoration: const BoxDecoration(),
//                 child: const SingleChildScrollView(
//                   // Add a SingleChildScrollView to ensure scrolling if text overflows
//                   child: Padding(
//                     padding: EdgeInsets.all(
//                         30.0), // Add padding of 10 pixels on each side
//                     child: Text(
//                       kLongText,
//                       style: TextStyle(
//                         fontFamily: 'Ubuntu',
//                         fontSize: 20,
//                         color: Colors.white,
//                         decoration: TextDecoration.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// const String kLongText =
//     '/If the <time> is 0s, like the initial value, the keyframes of the animation have no effect, but the animation itself still occurs instantaneously.\n'
//     'Specifically, start and end events are fired; if animation-fill-mode is set to backwards or both, the first frame of the animation,\n'
//     'as defined by animation-direction, will be displayed during the animation-delay.\n'
//     'After the animation-delay the last frame of the animation, as defined by animation-direction, will be displayed if animation-fill-mode is set to forwards or both.\n'
//     'If animation-fill-mode is set to none the animation will have no visible effect.';

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
  fontSize: 20,
);

const TextStyle kHeaderTextStyle = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: 70,
  color: Colors.white,
);
