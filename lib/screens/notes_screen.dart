import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ifreez/models/notes_operation.dart';
import 'package:ifreez/screens/home_screen.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}