import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const BackButtonWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        screenWidth * 0.025,
        screenHeight * 0.03,
        screenWidth * 0.04,
        screenHeight * 0.02,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.025,
            screenHeight * 0.03,
            screenWidth * 0.04,
            screenHeight * 0.02,
          ),
          child: SizedBox(
            width: screenWidth * 0.05,
            child: const Image(
              image: AssetImage('assets/left3.png'),
            ),
          ),
        ),
      ),
    );
  }
}