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
        controller: _scrollController,
        physics:
            const AlwaysScrollableScrollPhysics(), // Allow smooth scrolling
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const StackContainer(),
              ),
              ElevatedButton(
                onPressed: () {
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
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                kLongText,
                textAlign: TextAlign.justify,
                style: kTextStyle,
              ),
            ),
          ),
          Positioned(
            top: 0, // Attach to upper border
            left: 0,
            child: Container(
              width: 885, // Width specified
              height: 373, // Height specified
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                'Your Text Here',
                style: kHeaderTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String kLongText =
    '/If the <time> is 0s, like the initial value, the keyframes of the animation have no effect, but the animation itself still occurs instantaneously. Specifically, start and end events are fired; if animation-fill-mode is set to backwards or both, the first frame of the animation, as defined by animation-direction, will be displayed during the animation-delay. After the animation-delay the last frame of the animation, as defined by animation-direction, will be displayed if animation-fill-mode is set to forwards or both. If animation-fill-mode is set to none the animation will have no visible effect.';

const TextStyle kTextStyle = TextStyle(
  color: Colors.white,
);

const TextStyle kHeaderTextStyle = TextStyle(
  fontFamily: 'Ubuntu',
  fontSize: 100,
  color: Colors.white,
);
