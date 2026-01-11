import 'package:flutter/material.dart';
import '../constants/text_styles.dart';
import '../widgets/back_button_widget.dart';

class Dbara extends StatelessWidget {
  const Dbara({Key? key}) : super(key: key);

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
                    screenHeight * 0.02,
                  ),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        "Suggestions",
                        style: textStyle3,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dbara2(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.075, 0, 0, 0),
                    width: screenWidth * 0.375,
                    height: screenHeight * 0.5,
                    child: Card(
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 30,
                      shadowColor: Colors.blue,
                      margin: EdgeInsets.fromLTRB(
                        screenWidth * 0.04,
                        screenHeight * 0.025,
                        screenWidth * 0.04,
                        screenHeight * 0.025,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            child: Image(
                              image: const AssetImage('assets/o1.jpg'),
                              fit: BoxFit.contain,
                              height: screenHeight * 0.3,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          const Text(
                            "Ojja",
                            style: textStyle3,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Dbara2 extends StatelessWidget {
  const Dbara2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
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
                    screenHeight * 0.025,
                    screenWidth * 0.04,
                    screenHeight * 0.025,
                  ),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        "Ojja Tunisienne",
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
              child: SizedBox(
                width: screenWidth * 0.7,
                child: const Image(
                  image: AssetImage('assets/e12.png'),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}