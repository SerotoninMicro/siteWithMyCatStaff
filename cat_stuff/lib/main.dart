import 'package:flutter/material.dart';

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
              ElevatedButton(
                onPressed: () {
                  // Ensure that the scrolling action is triggered correctly
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut,
                  );
                },
                child: const Text('Scroll to Bottom'),
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
            top: 50, // Attach to upper border
            left: 50,
            child: Container(
              width: 885, // Width specified
              height: 373, // Height specified
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                'Anastasia\n'
                'Lebed',
                style: kHeaderTextStyle,
              ),
            ),
          ),
          Positioned(
            top: 350, // Place under the text
            left: 50, // Align with the left edge
            child: Text(
              kLongText,
              textAlign: TextAlign.justify,
              style: kTextStyle,
            ),
          ),
          const Positioned(
            top: 573, // Place under the text
            left: 0, // Align with the left edge
            child: WhiteBox(),
          ),
          const Positioned(
            top: 573, // Place under the text
            left: 600, // Place next to the first box
            child: OrangeBox(),
          ),
        ],
      ),
    );
  }
}

class WhiteBox extends StatelessWidget {
  const WhiteBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 720,
      height: 1299,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}

class OrangeBox extends StatelessWidget {
  const OrangeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 720,
      height: 1299,
      child: Container(
        color: const Color(0xFFFF5C00),
      ),
    );
  }
}

const String kLongText =
    '/If the <time> is 0s, like the initial value, the keyframes of the animation have no effect, but the animation itself still occurs instantaneously.\n'
    'Specifically, start and end events are fired; if animation-fill-mode is set to backwards or both, the first frame of the animation,\n'
    'as defined by animation-direction, will be displayed during the animation-delay.\n'
    'After the animation-delay the last frame of the animation, as defined by animation-direction, will be displayed if animation-fill-mode is set to forwards or both.\n'
    'If animation-fill-mode is set to none the animation will have no visible effect.';

const TextStyle kTextStyle = TextStyle(
  color: Colors.white,
);

const TextStyle kHeaderTextStyle = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: 100,
  color: Colors.white,
);
