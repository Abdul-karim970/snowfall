import 'package:flutter/material.dart';
import 'package:snowfall/sowfall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Snow Fall',
        width: width,
        height: height,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key,
      required this.title,
      required this.width,
      required this.height});

  final String title;
  final double width;
  final double height;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
                width: width,
                height: height,
                child: Image.asset(
                    fit: BoxFit.fitHeight, 'assets/images/white_house.jpg')),
            SnowFall(
              width: width,
              height: height,
              noOfSnowBall: 200,
              backgroundColor: Colors.transparent,
            ),
          ]),
    );
  }
}































/* Stack(
              alignment: Alignment.topCenter,
              children: [
                AnimatedPositioned(
                  duration: const Duration(seconds: 3),
                  top: firstRowTopDistance,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i <= 10; i++)
                        const Icon(
                          Icons.ac_unit_rounded,
                        )
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 1),
                  top: secondRowTopDistance,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i <= 15; i++)
                        const Icon(
                          Icons.ac_unit_rounded,
                        )
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 5),
                  top: secondRowTopDistance,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i <= 5; i++)
                        const Icon(
                          Icons.ac_unit_rounded,
                        )
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 2),
                  top: secondRowTopDistance,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i <= 7; i++)
                        const Icon(
                          Icons.ac_unit_rounded,
                        )
                    ],
                  ),
                )
              ],
            )*/