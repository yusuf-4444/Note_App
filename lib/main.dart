import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/home_page_view.dart';

void main() async {
  await Hive.initFlutter();

  Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
