import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/text_styles.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.fromLTRB(0, screenHeight * 0.04, 0, 0),
      child: ListView(
        children: [
          _buildSettingItem(
            screenWidth,
            screenHeight,
            'Mode economique',
            "Utilisez moins d'energie !",
            'assets/eco1.png',
          ),
          SizedBox(height: screenHeight * 0.025),
          _buildSettingItem(
            screenWidth,
            screenHeight,
            'Mode Vacances',
            "Consommez moins d'energie en vacances",
            'assets/vac3.png',
          ),
          SizedBox(height: screenHeight * 0.025),
          _buildSettingItem(
            screenWidth,
            screenHeight,
            'Frezz Boost',
            'Congelation rapide',
            'assets/frez1.png',
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem(
      double screenWidth,
      double screenHeight,
      String title,
      String subtitle,
      String imagePath,
      ) {
    return ListTile(
      title: Text(
        title,
        style: textStyle,
      ),
      subtitle: Text(subtitle),
      leading: SizedBox(
        width: screenWidth * 0.08,
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
      ),
      trailing: ToggleSwitch(
        minWidth: screenWidth * 0.11,
        cornerRadius: 20.0,
        activeBgColors: const [
          [Colors.cyan],
          [Colors.redAccent]
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.grey,
        inactiveFgColor: Colors.white,
        totalSwitches: 2,
        labels: const ['ON', ''],
        icons: const [null, FontAwesomeIcons.times],
      ),
    );
  }
}