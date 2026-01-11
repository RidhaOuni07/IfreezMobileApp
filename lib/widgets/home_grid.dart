import 'package:flutter/material.dart';
import '../constants/text_styles.dart';
import '../screens/dbara_screen.dart';
import '../screens/stock_screen.dart';
import '../screens/music_screen.dart';
import '../screens/control_screen.dart';
import '../screens/notes_screen.dart';
import '../screens/stats_screen.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.fromLTRB(
        screenWidth * 0.14,
        screenHeight * 0.04,
        screenWidth * 0.04,
        screenHeight * 0.02,
      ),
      child: Column(
        children: [
          // First Row
          Row(
            children: [
              _buildNavigationCard(
                context,
                screenWidth,
                screenHeight,
                'assets/icon.jpg',
                'Dbara',
                const Dbara(),
              ),
              SizedBox(width: screenWidth * 0.04),
              _buildNavigationCard(
                context,
                screenWidth,
                screenHeight,
                'assets/l2.jpg',
                'Stock',
                const StockScreen(),
              ),
              SizedBox(width: screenWidth * 0.04),
              _buildNavigationCard(
                context,
                screenWidth,
                screenHeight,
                'assets/m2.jpg',
                'Music',
                const MusicApp(),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          // Second Row
          Row(
            children: [
              _buildNavigationCard(
                context,
                screenWidth,
                screenHeight,
                'assets/tmp.png',
                'Control',
                const Control(),
              ),
              SizedBox(width: screenWidth * 0.04),
              _buildNavigationCard(
                context,
                screenWidth,
                screenHeight,
                'assets/notes6.jpg',
                'Notes',
                const Notes(),
              ),
              SizedBox(width: screenWidth * 0.04),
              _buildNavigationCard(
                context,
                screenWidth,
                screenHeight,
                'assets/stat.png',
                'Stats',
                const Stats(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationCard(
      BuildContext context,
      double screenWidth,
      double screenHeight,
      String imagePath,
      String label,
      Widget destination,
      ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: SizedBox(
        width: screenWidth * 0.21,
        height: screenHeight * 0.35,
        child: Card(
          color: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 30,
          shadowColor: Colors.blue,
          margin: EdgeInsets.fromLTRB(
            screenWidth * 0.04,
            screenHeight * 0.02,
            screenWidth * 0.04,
            screenHeight * 0.02,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                  height: screenHeight * 0.2,
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                label,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}