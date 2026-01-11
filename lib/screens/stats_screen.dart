import 'package:flutter/material.dart';
import '../constants/text_styles.dart';
import '../widgets/back_button_widget.dart';

class Stats extends StatefulWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                BackButtonWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
                SizedBox(width: screenWidth * 0.013),
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
                        "Statistiques",
                        style: textStyle3,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.056,
                0,
                screenWidth * 0.04,
                screenHeight * 0.025,
              ),
              child: Material(
                elevation: 18.0,
                shape: const CircleBorder(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SizedBox(
                    width: screenWidth * 0.5,
                    child: const Image(
                      image: AssetImage('assets/g6.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}