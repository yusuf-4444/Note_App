import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
