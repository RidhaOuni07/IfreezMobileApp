import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../constants/text_styles.dart';

class Control extends StatefulWidget {
  const Control({Key? key}) : super(key: key);
  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  int volume = 10;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.025,
                screenHeight * 0.03,
                screenWidth * 0.04,
                screenHeight * 0.025,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      width: screenWidth * 0.05,
                      child: const Image(
                        image: AssetImage('assets/left3.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.2,
                      screenHeight * 0.03,
                      screenWidth * 0.04,
                      screenHeight * 0.025,
                    ),
                    child: const SizedBox(
                      child: Center(
                        child: Text(
                          "Regulation de temperature",
                          style: textStyle2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.14,
                      screenHeight * 0.03,
                      screenWidth * 0.04,
                      screenHeight * 0.025,
                    ),
                    child: SleekCircularSlider(
                      initialValue: 30,
                      max: 100,
                      onChange: (v) {
                        print(v);
                      },
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.075),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.14,
                      screenHeight * 0.03,
                      screenWidth * 0.04,
                      screenHeight * 0.025,
                    ),
                    child: SleekCircularSlider(
                      initialValue: 60,
                      max: 100,
                      onChange: (v) {
                        print(v);
                      },
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.16,
                    screenHeight * 0.03,
                    screenWidth * 0.04,
                    screenHeight * 0.025,
                  ),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        "Congelateur                                    Compartiment bas",
                        style: textStyle2,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}