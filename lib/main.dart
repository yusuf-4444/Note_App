import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/home_page_view.dart';

void main() async {
  await Hive.initFlutter();

  Hive.openBox(kNotesBox);

  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
