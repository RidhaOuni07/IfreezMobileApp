import 'package:flutter/material.dart';
import '../constants/text_styles.dart';
import '../widgets/back_button_widget.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

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
                    screenWidth * 0.16,
                    screenHeight * 0.375,
                    screenWidth * 0.04,
                    screenHeight * 0.025,
                  ),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        "COMING SOON",
                        style: textStyle3,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}