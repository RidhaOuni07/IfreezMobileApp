import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:provider/provider.dart';
import 'package:ifreez/models/notes_operation.dart';
import 'package:ifreez/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(const MaterialYou());
}

const TextStyle _textStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

const TextStyle _textStyle2 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

const TextStyle _textStyle3 = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = [
    Container(
        padding: const EdgeInsets.fromLTRB(110, 20, 30, 10),
        child: Column(
          children: [
            Row(
              children: [
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => dbara(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 140,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 30,
                        shadowColor: Colors.blue,
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/icon.jpg'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text(
                                "Dbara",
                                style: _textStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  width: 30,
                ),
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 140,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 30,
                        shadowColor: Colors.blue,
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/l2.jpg'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text(
                                "Stock",
                                style: _textStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  width: 30,
                ),
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MusicApp(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 140,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 30,
                        shadowColor: Colors.blue,
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/m2.jpg'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text(
                                "Music",
                                style: _textStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
            const SizedBox(
              height: 5,
            ), // second row
            Row(
              children: [
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => control(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 140,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 30,
                        shadowColor: Colors.blue,
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/tmp.png'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text(
                                "Control",
                                style: _textStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  width: 30,
                ),
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => notes(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 140,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 30,
                        shadowColor: Colors.blue,
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/notes6.jpg'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text(
                                "Notes",
                                style: _textStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  width: 30,
                ),
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => stats(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 140,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 30,
                        shadowColor: Colors.blue,
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/stat.png'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text(
                                "Stats",
                                style: _textStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        )), //Settings
    Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'Mode economique',
              style: _textStyle,
            ),
            subtitle: Text("Utilisez moins d'energie !"),
            leading: Image(
              image: AssetImage('assets/eco1.png'),
              fit: BoxFit.contain,
            ),
            trailing: Container(
              child: ToggleSwitch(
                minWidth: 90.0,
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
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              'Mode Vacances',
              style: _textStyle,
            ),
            subtitle: Text("Consommez moins d'energie en vacances"),
            leading: Image(
              image: AssetImage('assets/vac3.png'),
              fit: BoxFit.contain,
            ),
            trailing: Container(
              child: ToggleSwitch(
                minWidth: 90.0,
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
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              'Frezz Boost',
              style: _textStyle,
            ),
            subtitle: Text('Congelation rapide'),
            leading: Image(
              image: AssetImage('assets/frez1.png'),
              fit: BoxFit.contain,
            ),
            trailing: Container(
              child: ToggleSwitch(
                minWidth: 90.0,
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
            ),
          )
        ],
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: pages[_currentIndex],
          bottomNavigationBar: SizedBox(
            height: 60,
            child: NavigationBar(
              selectedIndex: _currentIndex,
              onDestinationSelected: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              destinations: const [
                NavigationDestination(
                  selectedIcon: Icon((Icons.home)),
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                NavigationDestination(
                  selectedIcon: Icon((Icons.settings)),
                  icon: Icon(Icons.settings_outlined),
                  label: "Settings",
                )
              ],
            ),
          ),
        ));
  }
}

/*Container(
      padding: const EdgeInsets.fromLTRB(110, 40, 30, 10),
      child: ToggleSwitch(
        minWidth: 90.0,
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
    ),*/

class dbara extends StatelessWidget {
  const dbara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                    child: Image(
                      image: AssetImage('assets/left3.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(160, 15, 30, 10),
                child: SizedBox(
                    child: Center(
                  child: Text(
                    "Suggestions",
                    style: _textStyle3,
                  ),
                )),
              )
            ]),
            Row(children: [
              Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => dbara2(),
                      ),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      width: 300,
                      height: 200,
                      child: Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          elevation: 30,
                          shadowColor: Colors.blue,
                          margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Column(children: [
                            const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Image(
                                  image: AssetImage('assets/o1.jpg'),
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              height: 13,
                            ),
                            Container(
                              child: const Text(
                                "Ojja",
                                style: _textStyle3,
                              ),
                            )
                          ]))),
                );
              }),
            ]),
          ]),
        ));
  }
}

class dbara2 extends StatelessWidget {
  const dbara2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                    child: Image(
                      image: AssetImage('assets/left3.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 10, 30, 10),
                child: SizedBox(
                    child: Center(
                  child: Text(
                    "Ojja Tunisienne",
                    style: _textStyle3,
                  ),
                )),
              )
            ]),
            Container(
              padding: const EdgeInsets.fromLTRB(45, 0, 30, 10),
              child: Image(
                image: AssetImage('assets/e12.png'),
                fit: BoxFit.contain,
              ),
            )
          ]),
        ));
  }
}

class control extends StatefulWidget {
  control({Key? key}) : super(key: key);
  @override
  State<control> createState() => _controlState();
}

class _controlState extends State<control> {
  int volume = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/left3.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(160, 15, 30, 10),
                    child: SizedBox(
                        child: Center(
                      child: Text(
                        "Regulation de temperature",
                        style: _textStyle2,
                      ),
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(110, 15, 30, 10),
                    child: SleekCircularSlider(
                      initialValue: 30,
                      max: 100,
                      onChange: (v) {
                        print(v);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(110, 15, 30, 10),
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
                  padding: const EdgeInsets.fromLTRB(127, 15, 30, 10),
                  child: SizedBox(
                      child: Center(
                    child: Text(
                      "Congelateur                                    Compartiment bas",
                      style: _textStyle2,
                    ),
                  )),
                ),
              ],
            )
          ]),
        ));
  }
}

class notes extends StatelessWidget {
  const notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

class stats extends StatefulWidget {
  stats({Key? key}) : super(key: key);

  @override
  State<stats> createState() => _statsState();
}

class _statsState extends State<stats> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                    child: Image(
                      image: AssetImage('assets/left3.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(160, 15, 30, 10),
                child: SizedBox(
                    child: Center(
                  child: Text(
                    "Statistiques",
                    style: _textStyle3,
                  ),
                )),
              )
            ]),
            Container(
              padding: const EdgeInsets.fromLTRB(45, 0, 30, 10),
              child: Material(
                elevation: 18.0,
                shape: const CircleBorder(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/g6.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String da = "kkk";
  String b1 = "??";
  String b2 = "??";
  String b3 = "??";
  late BluetoothConnection connection;

  Timer? timer;

  _MyHomePageState() {
    _connect();
  }

  bool get isConnected => (connection.isConnected);

  Future<void> _connect() async {
    try {
      connection = await BluetoothConnection.toAddress("98:DA:60:01:A9:3F");
      connection.input?.listen((Uint8List data) {
        da = '${ascii.decode(data)}';

        if (ascii.decode(data).contains('!')) {
          connection.finish(); // Closing connection
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

  void _reloadOrCheck() {
    waitLoading();
    _connect();
  }

  Future<void> _sendData(String data) async {
    connection.output
        .add(Uint8List.fromList(utf8.encode(data))); // Sending data
    await connection.output.allSent;
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 500), (_) {
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

    /*for (int i = c1 + 1; i < da.length; i++) {
        if (da[i] == "b") {
          c2 = i;
          break;
        }*/

    //b1 = da.substring(3, c1 - 1);
    /*b2 = da.substring(c1 + 2, c2 - 1);
      b3 = da.substring(c2 + 2);
      
      b1:2b2:3
      */

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Row(children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                  child: Image(
                    image: AssetImage('assets/left3.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(220, 15, 30, 10),
                child: SizedBox(
                    child: Center(
                  child: Text(
                    "Stock",
                    style: _textStyle3,
                  ),
                )),
              )
            ]),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      "Tomates",
                      style: _textStyle2,
                    ),
                    leading: Image(
                      image: AssetImage('assets/to8.png'),
                      fit: BoxFit.contain,
                    ),
                    trailing: Container(
                        child: Text(
                      b1 + " g",
                      style: _textStyle2,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      "Pommes de terres",
                      style: _textStyle2,
                    ),
                    leading: Image(
                      image: AssetImage('assets/po1.png'),
                      fit: BoxFit.contain,
                    ),
                    trailing: Container(
                        child: Text(
                      b2 + " g",
                      style: _textStyle2,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      "Viande",
                      style: _textStyle2,
                    ),
                    leading: Image(
                      image: AssetImage('assets/v1.png'),
                      fit: BoxFit.contain,
                    ),
                    trailing: Container(
                        child: Text(
                      b3 + " g",
                      style: _textStyle2,
                    )),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
                    child: Image(
                      image: AssetImage('assets/left3.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 150, 30, 10),
                child: SizedBox(
                    child: Center(
                  child: Text(
                    "COMING SOON",
                    style: _textStyle3,
                  ),
                )),
              )
            ]),
          ]),
        ));
  }
}
