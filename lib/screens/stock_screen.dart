import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import '../constants/text_styles.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  String da = "kkk";
  String b1 = "??";
  String b2 = "??";
  String b3 = "??";
  late BluetoothConnection connection;

  Timer? timer;

  _StockScreenState() {
    _connect();
  }

  bool get isConnected => (connection.isConnected);

  Future<void> _connect() async {
    try {
      connection = await BluetoothConnection.toAddress("98:DA:60:01:A9:3F");
      connection.input?.listen((Uint8List data) {
        da = ascii.decode(data);

        if (ascii.decode(data).contains('!')) {
          connection.finish();
          print('Disconnecting by local host');
        }
      }).onDone(() {
        print('Disconnected by remote request');
      });

      print('Connected to the bluetooth device');
      setState(() {});
    } catch (exception) {
      try {
        if (isConnected) {
          print('Already connected to the device');
          setState(() {});
        } else {
          print('Cannot connect, exception occured');
          setState(() {});
        }
      } catch (e) {
        print('Cannot connect, probably not initialized connection');
        setState(() {});
      }
    }
  }

  void waitLoading() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    _connect();
    int c1 = 0;
    int c2 = 0;
    int c3 = 0;
    if (da.length > 10) {
      for (int i = 2; i < da.length; i++) {
        if (da[i] == "b") {
          c1 = i;
          break;
        }
      }
      for (int i = c1 + 1; i < da.length; i++) {
        if (da[i] == "b") {
          c2 = i;
          break;
        }
      }
      for (int i = c2 + 1; i < da.length; i++) {
        if (da[i] == "b") {
          c3 = i;
          break;
        }
      }
      b1 = da.substring(3, c1);
      b2 = da.substring(c1 + 3, c2);
      b3 = da.substring(c2 + 3, c3);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.025,
                      screenHeight * 0.03,
                      screenWidth * 0.04,
                      screenHeight * 0.025,
                    ),
                    child: SizedBox(
                      width: screenWidth * 0.05,
                      child: const Image(
                        image: AssetImage('assets/left3.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.275,
                    screenHeight * 0.03,
                    screenWidth * 0.04,
                    screenHeight * 0.025,
                  ),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        "Stock",
                        style: textStyle3,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  _buildStockItem(
                    screenWidth,
                    'assets/to8.png',
                    'Tomates',
                    b1,
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  _buildStockItem(
                    screenWidth,
                    'assets/po1.png',
                    'Pommes de terres',
                    b2,
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  _buildStockItem(
                    screenWidth,
                    'assets/v1.png',
                    'Viande',
                    b3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStockItem(
      double screenWidth,
      String imagePath,
      String title,
      String value,
      ) {
    return ListTile(
      title: Text(
        title,
        style: textStyle2,
      ),
      leading: SizedBox(
        width: screenWidth * 0.08,
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
      ),
      trailing: Text(
        value + " g",
        style: textStyle2,
      ),
    );
  }
}